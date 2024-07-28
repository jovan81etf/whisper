clc 
rb=103; % testing speaker rb from DB1 {101,102,103,104,105,106,109,110,111,112}

create_scp_file(rb,110,110,1,2,3,10,1,2);  % 110 - normal 115 -whisper 
create_mlf_file(rb,110,110,1,2,3,10,1,2);  % 110 - normal 115 -whisper

create_ph_mlf(rb,110,110); % 110 - normal 115 -whisper

% Create config file
fid = fopen('config', 'w');
fprintf(fid, '%s\n', ['SOURCEKIND = WAVEFORM']);
fprintf(fid, '%s\n', ['SOURCEFORMAT = WAV']);
fprintf(fid, '%s\n', ['SOURCERATE = 625']);
fprintf(fid, '%s\n', ['TARGETKIND =MFCC_0_D_A_Z']);
fprintf(fid, '%s\n', ['TARGETRATE = 80000.0']);
fprintf(fid, '%s\n', ['SAVECOMPRESSED = F']);
fprintf(fid, '%s\n', ['SAVEWITHCRC = F']);
fprintf(fid, '%s\n', ['WINDOWSIZE = 240000.0']);
fprintf(fid, '%s\n', ['USEHAMMING = T']);
fprintf(fid, '%s\n', ['PREEMCOEF = 0.97']);
fprintf(fid, '%s\n', ['NUMCHANS = 26']);
fprintf(fid, '%s\n', ['ENORMALISE = T']);
fprintf(fid, '%s\n', ['USEPOWER = F']);
fclose(fid);

path_to_config='C:\Users\Public\MATLAB\TOPGS\NEZAVISNI_NOVI\config'
path_to_antrain='C:\Users\Public\MATLAB\TOPGS\NEZAVISNI_NOVI\antrain.scp'

% % % HCOPY, feature extraction
eval(['!C:\htk\TOPGS\HCopy.exe -T 1 -C path_to_config -S path_to_antrain']); 
eval(['!C:\htk\TOPGS\HCopy.exe -T 1 -C path_to_config -S path_to_antest']); 

create_proto();

% HCOMP initial models
eval(['!C:\htk\TOPGS\HCompV.exe -f 0.01 -m -S path_to_antrainl -M path_to_initial_hmm path_to_proto']);

% cloning initial models
clean();
cloning();

eval('!C:\htk\TOPGS\HERest.exe -T 1 -I path_to_antrain.ph.mlf -t 250.0 150.0 1000.0 -S path_to_antrainl -H path_to_hmmdefs -M path_to_hmm01 path_to_phones_file');
eval(['!C:\htk\TOPGS\HHed.exe -H path_to_hmm01 -M path_to_hmm02 path_to_mu2.hed path_to_phones']);

eval('!C:\htk\TOPGS\HERest.exe -T 1 -I path_to_antrain.ph.mlf -t 250.0 150.0 1000.0 -S path_to_antrainl -H path_to_hmm02 -M path_to_hmm03 path_to_phones_file');
eval(['!C:\htk\TOPGS\HHed.exe -H path_to_hmm03 -M path_to_hmm04 path_to_mu4.hed path_to_phones']);

eval('!C:\htk\TOPGS\HERest.exe -T 1 -I path_to_antrain.ph.mlf -t 250.0 150.0 1000.0 -S path_to_antrainl -H path_to_hmm04 -M path_to_hmm05 path_to_phones_file');
eval(['!C:\htk\TOPGS\HHed.exe -H path_to_hmm05 -M path_to_hmm06 path_to_mu8.hed path_to_phones']);

eval('!C:\htk\TOPGS\HERest.exe -T 1 -I path_to_antrain.ph.mlf -t 250.0 150.0 1000.0 -S path_to_antrainl -H path_to_hmm06 -M path_to_hmm07 path_to_phones_file');
eval(['!C:\htk\TOPGS\HHed.exe -H path_to_hmm07 -M path_to_hmm08 path_to_mu16.hed path_to_phones']);

eval('!C:\htk\TOPGS\HERest.exe -T 1 -I path_to_antrain.ph.mlf -t 250.0 150.0 1000.0 -S path_to_antrainl -H path_to_hmm08 -M path_to_hmm09 path_to_phones_file');

% create word_net from grammar file
eval('!C:\htk\TOPGS\HParse path_to_grammar_file word_net');
% Viterbi decoder
eval('!C:\htk\TOPGS\HVite -H path_to_hmm_defs -S path_to_antestl -i recout.mlf -o STW -w path_to_word_net -p 0.0 path_to_dic path_to_phones_file');

eval('!C:\htk\TOPGS\HResults -I path_to_test.mlf path_to_phones_file path_to_recout.mlf');

load chirp % sound signal - warn when executes
sound(y,Fs)