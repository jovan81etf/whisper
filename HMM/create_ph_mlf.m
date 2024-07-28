function create_ph_mlf(govornik3,trening,test) 

% creation PH.MLF files
%**************************************************************************
%************************   P H . M   L   F  ******************************
%**************************************************************************
%% C:/htk/TOPGS/base/an4/wav/augn_TST_mat - path to folder with wav - change 

fid1=fopen('an4_train.ph.mlf','w');
fprintf(fid1,'%s\n',['#!MLF!#']);
govornik=[2 6 7 8 9 14 15 16 18 19 govornik3];

for i=1:11
    if(govornik(i)~=govornik3)
%  ************************************************
%  **************** COLORS **************************
%**************************************************
%                  BOJA1
    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja1_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','B','E','L','A','sil','.');
        end
    end

%                  BOJA2

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja2_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','ZH','U','T','A','sil','.');
        end
    end

%                  BOJA3

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja3_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','C','Y','R','Y','N','A','sil','.');
        end
    end

%                  BOJA4
    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja4_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','C','Y','R','Y','V','E','N','A','sil','.');
        end
    end

%                  BOJA5
    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja5_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','L','A','V','A','sil','.');
        end
    end

%                  BOJA6
    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja6_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','Z','E','L','E','N','A','sil','.');
        end
    end

%  ************************************************
%  **************** NUMBERS ***********************
%**************************************************

%                  BROJ1

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj1_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','N','U','L','A','sil','.');
        end
    end
%                  BROJ2

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj2_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','J','E','D','A','N','sil','.');
        end
    end
%                  BROJ3

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj3_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n','sil','D','V','A','sil','.');
        end
    end

%                  BROJ4

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj4_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','T','Y','R','I','sil','.');
        end
    end

%                  BROJ5

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj5_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','CH','E','T','I','R','I','sil','.');
        end
    end

%                  BROJ6

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj6_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','E','T','sil','.');
        end
    end

%                  BROJ7

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj7_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','SH','E','S','T','sil','.');
        end
    end
%                  BROJ8

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj8_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','E','D','A','M','sil','.');
        end
    end
%                  BROJ9

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj9_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','O','S','A','M','sil','.');
        end
    end

%                  BROJ10

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj10_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','D','E','V','E','T','sil','.');
        end
    end

%                  BROJ11

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj11_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','D','E','S','E','T','sil','.');
        end
    end

%                  BROJ12

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj12_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','T','O','sil','.');
        end
    end

%                  BROJ13

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj13_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','H','I','LJ','A','D','U','sil','.');
        end
    end

%                  BROJ14

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj14_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','M','I','L','I','O','N','sil','.');
        end
    end

%  ************************************************
%  **************** BALANCED WORDS    ***********************
%**************************************************
%                  REC1

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec1_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','M','I','R','Y','K','O','sil','.');
        end
    end

%                   REC2
    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec2_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','ZH','U','R','Y','K','A','sil','.');
        end
    end
%                   REC3

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec3_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','E','T','A','R','Y','sil','.');
        end
    end

%                   REC4

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec4_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','D','E','M','O','N','S','T','Y','R','A','C','I','J','E','sil','.');
        end
    end

%                   REC5
    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec5_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','T','A','N','D','A','R','Y','D','sil','.');
        end
    end

%                   REC6

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec6_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','I','J','A','C','A','sil','.');
        end
    end

%                   REC7

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec7_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','A','D','A','V','I','N','E','sil','.');
        end
    end

%                   REC8

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec8_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','O','N','E','D','E','LJ','A','K','sil','.');
        end
    end

%                   REC9

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec9_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n','sil','G','O','D','I','N','A','sil','.');
        end
    end

%                   REC10

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec10_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','Y','R','E','C','T','A','V','A','sil','.');
        end
    end

%                   REC11

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec11_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','K','O','M','P','J','U','T','E','R','I','sil','.');
        end
    end

%                   REC12

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec12_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','I','N','O','S','T','Y','R','A','N','S','T','V','O','sil','.');
        end
    end

%                   REC13

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec13_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','D','Y','R','Y','V','O','sil','.');
        end
    end

%                   REC14

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec14_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','M','I','R','Y','J','A','N','A','sil','.');
        end
    end

%                   REC15

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec15_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','M','O','R','E','sil','.');
        end
    end

%                   REC16

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec16_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','K','I','SH','A','sil','.');
        end
    end

%                   REC17

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec17_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','Z','G','Y','R','A','D','E','sil','.');
        end
    end

%                   REC18

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec18_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','K','L','I','N','C','I','sil','.');
        end
    end

%                   REC19

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec19_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','M','I','L','A','N','sil','.');
        end
    end

%                   REC20

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec20_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','R','E','Z','U','L','T','A','T','I','sil','.');
        end
    end

%                   REC21

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec21_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','T','E','L','E','F','O','N','sil','.');
        end
    end
%                   REC22

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec22_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','V','E','T','L','O','sil','.');
        end
    end
%                   REC23

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec23_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','Y','R','O','Z','O','R','Y','sil','.');
        end
    end
%                   REC24

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec24_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','R','U','K','E','sil','.');
        end
    end
%                   REC25

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec25_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','L','O','K','A','L','sil','.');
        end
    end
%                   REC26

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec26_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','K','LJ','U','CH','sil','.');
        end
    end
%                   REC27

    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec27_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','U','N','C','E','sil','.');
        end
    end

%                   REC28
    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec28_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','A','R','E','sil','.');
        end
    end
%                   REC29
    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec29_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','E','F','sil','.');
        end
    end
%                   REC30
    for izgovor=1:10
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec30_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','B','L','O','K','sil','.');
        end
    end
end
end
fclose(fid1);

fid2=fopen('an4_test.ph.mlf','w');
fprintf(fid2,'%s\n',['#!MLF!#']);

govornik=[2 6 7 8 9 14 15 16 18 19 govornik3];
  
for i=1:11
     if(govornik(i)==govornik3)
%  ************************************************
%  **************** COLORS  **************************
%**************************************************
%                  BOJA1
 for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja1_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','B','E','L','A','sil','.');
        end
    end

%                  BOJA2

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja2_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','ZH','U','T','A','sil','.');
        end
    end

%                  BOJA3

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja3_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','C','Y','R','Y','N','A','sil','.');
        end
    end

%                  BOJA4
    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja4_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','C','Y','R','Y','V','E','N','A','sil','.');
        end
    end

%                  BOJA5
    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja5_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','L','A','V','A','sil','.');
        end
    end

%                  BOJA6
    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja6_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','Z','E','L','E','N','A','sil','.');
        end
    end

%  ************************************************
%  **************** NUMBERS ***********************
%**************************************************

%                  BROJ1

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj1_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','N','U','L','A','sil','.');
        end
    end
%                  BROJ2

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj2_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','J','E','D','A','N','sil','.');
        end
    end
%                  BROJ3

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj3_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n','sil','D','V','A','sil','.');
        end
    end

%                  BROJ4

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj4_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','T','Y','R','I','sil','.');
        end
    end

%                  BROJ5

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj5_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','CH','E','T','I','R','I','sil','.');
        end
    end

%                  BROJ6

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj6_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','E','T','sil','.');
        end
    end

%                  BROJ7

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj7_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','SH','E','S','T','sil','.');
        end
    end
%                  BROJ8

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj8_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','E','D','A','M','sil','.');
        end
    end
%                  BROJ9

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj9_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','O','S','A','M','sil','.');
        end
    end

%                  BROJ10

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj10_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','D','E','V','E','T','sil','.');
        end
    end

%                  BROJ11

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj11_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','D','E','S','E','T','sil','.');
        end
    end

%                  BROJ12

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj12_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','T','O','sil','.');
        end
    end

%                  BROJ13

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj13_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','H','I','LJ','A','D','U','sil','.');
        end
    end

%                  BROJ14

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj14_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','M','I','L','I','O','N','sil','.');
        end
    end

%  ************************************************
%  **************** BALANCED WORDS ****************
%  ************************************************
%                  REC1

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec1_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','M','I','R','Y','K','O','sil','.');
        end
    end

%                   REC2
    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec2_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','ZH','U','R','Y','K','A','sil','.');
        end
    end
%                   REC3

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec3_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','E','T','A','R','Y','sil','.');
        end
    end

%                   REC4

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec4_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','D','E','M','O','N','S','T','Y','R','A','C','I','J','E','sil','.');
        end
    end

%                   REC5
    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec5_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','T','A','N','D','A','R','Y','D','sil','.');
        end
    end

%                   REC6

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec6_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','I','J','A','C','A','sil','.');
        end
    end

%                   REC7

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec7_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','A','D','A','V','I','N','E','sil','.');
        end
    end

%                   REC8

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec8_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','O','N','E','D','E','LJ','A','K','sil','.');
        end
    end

%                   REC9

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec9_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n','sil','G','O','D','I','N','A','sil','.');
        end
    end

%                   REC10

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec10_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','Y','R','E','C','T','A','V','A','sil','.');
        end
    end

%                   REC11

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec11_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','K','O','M','P','J','U','T','E','R','I','sil','.');
        end
    end

%                   REC12

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec12_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','I','N','O','S','T','Y','R','A','N','S','T','V','O','sil','.');
        end
    end

%                   REC13

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec13_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','D','Y','R','Y','V','O','sil','.');
        end
    end

%                   REC14

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec14_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','M','I','R','Y','J','A','N','A','sil','.');
        end
    end

%                   REC15

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec15_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','M','O','R','E','sil','.');
        end
    end

%                   REC16

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec16_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','K','I','SH','A','sil','.');
        end
    end

%                   REC17

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec17_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','Z','G','Y','R','A','D','E','sil','.');
        end
    end

%                   REC18

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec18_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','K','L','I','N','C','I','sil','.');
        end
    end

%                   REC19

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec19_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','M','I','L','A','N','sil','.');
        end
    end

%                   REC20

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec20_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','R','E','Z','U','L','T','A','T','I','sil','.');
        end
    end

%                   REC21

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec21_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','T','E','L','E','F','O','N','sil','.');
        end
    end
%                   REC22

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec22_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','V','E','T','L','O','sil','.');
        end
    end
%                   REC23

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec23_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','Y','R','O','Z','O','R','Y','sil','.');
        end
    end
%                   REC24

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec24_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','R','U','K','E','sil','.');
        end
    end
%                   REC25

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec25_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','L','O','K','A','L','sil','.');
        end
    end
%                   REC26

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec26_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','K','LJ','U','CH','sil','.');
        end
    end
%                   REC27

    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec27_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','U','N','C','E','sil','.');
        end
    end

%                   REC28
    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec28_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','P','A','R','E','sil','.');
        end
    end
%                   REC29
    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec29_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n','sil','S','E','F','sil','.');
        end
    end
%                   REC30
    for izgovor=1:2
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec30_%d_%d%s.lab"\n',govornik(i),izgovor,mod); % n i s (110 i 115 ascii)
         fprintf(fid1,'%s\n%s\n%s\n%s\n%s\n%s\n%s\n','sil','B','L','O','K','sil','.');
        end
    end
end
   end
fclose(fid2);



