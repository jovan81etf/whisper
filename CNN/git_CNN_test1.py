# CNN experiment for Fig. 7


PATH_WAV_aug = 'C:/HTK/TOPGS/base/an4/wav/temp5matlab' # path to augmentation database
PATH_WAV_test = 'F:/Baza' # path to test database

import numpy as np
import pandas as pd
from python_speech_features import mfcc
from python_speech_features import delta
from python_speech_features import logfbank
from sklearn import svm, preprocessing
from sklearn.model_selection import train_test_split
import random
import tensorflow as tf

from tensorflow.keras import layers
from tensorflow.keras import models

import scipy.io.wavfile as wav


# cepstral mean normalization
def cms_matrica(ulaz):
    transp = ulaz.T
    for i in range (0, len(transp[0])):
        transp[i] = transp[i] - np.mean(transp[i])
        cms = transp.T
    return(cms)

def mfcc_fajl(file, N):
   
    K = 3 # overlap coefficient
    (rate,sig) = wav.read(file)
    duration = len(sig)/rate + 0.001  
   
    # segmentation on fixed number of windows
    ws = duration * K/(N + K -1)
    Fp = ws / K
    mfcc_s = mfcc(sig, rate, ws, Fp)  # static coefficients
    mfcc_d = delta (mfcc_s, 2)
    mfcc_dd = delta (mfcc_d, 2)
   
    _mfcc = np.column_stack((mfcc_s, mfcc_d, mfcc_dd)) # dynamic coefficients
    _mfcc_cms = cms_matrica(_mfcc)   
    return(_mfcc_cms)

def poravnaj(matrica):
    duzina = 702
    poravnata = np.reshape(matrica, duzina)
    return poravnata

#  **************************  TRAINING PART  ***********************************************

govornik = 110  # speaker for test from {101,102,103,104,105,106,109,110,111,112} DB1 database

mod_train = 'n' # n for normal and s for whisper
mod_test = 'n'

X = [] * 702

y = []

govornik_seq = [2,6,7,8,9,14,15,16,18,19]   # sequence for training speakers
train_seq = random.sample([1,2,3,4,5,6,7,8,9,10],10) # word
indeks = 0 

for k in govornik_seq:
        for i in range (1,7):    # Colors (words from Whi-Spe)
            for j in train_seq:
                fajl_wav = PATH_WAV_aug + '/boja{0}_{1}_{2}'.format(i,k,j) + mod_train + '.wav'
                obelezje = mfcc_fajl(fajl_wav, 18)
                obelezje_poravnato = poravnaj(obelezje)
                X1 = preprocessing.scale(obelezje_poravnato)
                X = np.append(X, X1, axis = 0)
                labela = [i]
                y = np.append(y, labela, axis = 0)
                indeks = indeks +1
                
        
        for i in range (1,15):    #Number (words from Whi-Spe)
            for j in train_seq:
                fajl_wav = PATH_WAV_aug + '/broj{0}_{1}_{2}'.format(i,k,j) + mod_train + '.wav'
                obelezje = mfcc_fajl(fajl_wav, 18)
                obelezje_poravnato = poravnaj(obelezje)
                p = i + 6
                X1 = preprocessing.scale(obelezje_poravnato)
                X = np.append(X, X1, axis = 0)
                labela = [p]
                y = np.append(y, labela, axis = 0)
                indeks = indeks + 1
                 
        for i in range (1,31): #Balanced words (words from Whi-Spe)
            for j in train_seq:
                fajl_wav = PATH_WAV_aug + '/rec{0}_{1}_{2}'.format(i,k,j) + mod_train + '.wav'
                obelezje = mfcc_fajl(fajl_wav, 18)
                obelezje_poravnato = poravnaj(obelezje)
                q = i + 20
                X1 = preprocessing.scale(obelezje_poravnato)
                X = np.append(X, X1, axis = 0)
                labela = [q]
                y = np.append(y, labela, axis = 0)
                indeks = indeks + 1
        
X_obuka = np.reshape(X, (500,-1)) # training vectors
y_obuka = y  # labels

X_obuka = X_obuka.reshape(-1, 54, 13, 1) # reshape

X_train, X_val, y_train, y_val = train_test_split(X_obuka, y_obuka, test_size=0.1) # 90/10 train/validation

# CNN model
norm_layer = layers.Normalization()
model = models.Sequential([
    layers.Input(shape=(54, 13,1)),
    # Downsample the input.
    layers.Resizing(32,32),
    # Normalize.
    norm_layer,
    layers.Conv2D(32, 3, activation='relu'),
    layers.Conv2D(64, 3, activation='relu'),
    layers.MaxPooling2D(),
    layers.Dropout(0.25),
    layers.Flatten(),
    layers.Dense(128, activation='relu'),
    layers.Dropout(0.5),
    layers.Dense(51),
])

model.summary()

model.compile(
    optimizer=tf.keras.optimizers.Adam(),
    loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
    metrics=['accuracy'],
)

EPOCHS = 10
history = model.fit(
    X_train, y_train,
    epochs=EPOCHS,
    validation_data=(X_val, y_val),
    callbacks=tf.keras.callbacks.EarlyStopping(verbose=1, patience=2),
)


#  **************************  TEST PART   ***********************************************

X = [] * 702

y = []

indeks = 0
for i in range (1,7):    # Colors (words from Whi-Spe)
    for j in range(1, 3):
        fajl_wav = PATH_WAV_test + '/boja{0}_{1}_{2}'.format(i,govornik,j) + mod_test + '.wav'
        obelezje = mfcc_fajl(fajl_wav, 18)
        obelezje_poravnato = poravnaj(obelezje)
        X1 = preprocessing.scale(obelezje_poravnato)
        X = np.append(X, X1, axis = 0)
        labela = [i]
        y = np.append(y, labela, axis = 0)
        indeks = indeks +1

      
         
for i in range (1,15):    #Number (words from Whi-Spe)
    for j in range(1, 3):
        fajl_wav = PATH_WAV_test + '/broj{0}_{1}_{2}'.format(i,govornik,j) + mod_test + '.wav'
        obelezje = mfcc_fajl(fajl_wav, 18)
        obelezje_poravnato = poravnaj(obelezje)
        p = i + 6
        X1 = preprocessing.scale(obelezje_poravnato)
        X = np.append(X, X1, axis = 0)
        labela = [p]
        y = np.append(y, labela, axis = 0)
        indeks = indeks + 1
                
for i in range (1,31): #Balanced words (words from Whi-Spe)
    for j in range(1, 3):
        fajl_wav = PATH_WAV_test + '/rec{0}_{1}_{2}'.format(i,govornik,j) + mod_test + '.wav'
        obelezje = mfcc_fajl(fajl_wav, 18)
        obelezje_poravnato = poravnaj(obelezje)
        q = i + 20
        X1 = preprocessing.scale(obelezje_poravnato)
        X = np.append(X, X1, axis = 0)
        labela = [q]
        y = np.append(y, labela, axis = 0)
        indeks = indeks + 1
        
X_test = np.reshape(X, (100,-1))
y_test = y

X_test = X_test.reshape(-1, 54, 13, 1)

# Calculating accuracy

y_pred = np.argmax(model.predict(X_test), axis=1)
y_true = y

test_acc = sum(y_pred == (y_true)) / len(y_true)
print(test_acc)







