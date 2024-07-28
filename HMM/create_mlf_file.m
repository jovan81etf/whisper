function create_mlf_file(govornik3,trening,test,tren_a,tren_b,tren_c,tren_d,test_a,test_b) % tren_a,tren_b,tren_c,tren_d - range of utterances for training
% KREIRANJE MLF fajlova                                                                     test_a,test_b range of utterances for test
%**************************************************************************
%************************    M   L   F      *******************************
%**************************************************************************
%% C:/htk/TOPGS/base/an4/wav/augn_TST_mat - path to folder with wav - change 

govornik=[2 6 7 8 9 14 15 16 18 19 govornik3];
fid1=fopen('an4_train.mlf','w');
fprintf(fid1,'%s\n',['#!MLF!#']);
%  **************** COLORS **************************
tekst=['BELA  ', 'ZHUTA ', 'CRNA  ', 'CRVENA', 'PLAVA ', 'ZELENA'];
for i=1:11
       if(govornik(i)~=govornik3)
for boja=1:6
    for izgovor=tren_a:tren_b
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja%d_%d_%d%s.lab"\n',boja,govornik(i),izgovor,mod); % n i s (115 i 115 ascii)
         fprintf(fid1,'%s\n',tekst(6*(boja-1)+1:(6*(boja-1)+6)));
         fprintf(fid1,'%s\n','.');
        end
    end
     for izgovor=tren_c:tren_d
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja%d_%d_%d%s.lab"\n',boja,govornik(i),izgovor,mod); % n i s (115 i 115 ascii)
         fprintf(fid1,'%s\n',tekst(6*(boja-1)+1:(6*(boja-1)+6)));
         fprintf(fid1,'%s\n','.');
        end
    end
end
    end
end

%  **************** NUMBERS **************************
tekst=['NULA   ', 'JEDAN  ', 'DVA    ', 'TRI    ', 'CHETIRI', 'PET    ', 'SHEST  ', 'SEDAM  ', 'OSAM   ', 'DEVET  ', 'DESET  ', 'STO    ', 'HILJADU', 'MILION '];
for i=1:11
       if(govornik(i)~=govornik3)
for broj=1:14
    for izgovor=tren_a:tren_b
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj%d_%d_%d%s.lab"\n',broj,govornik(i),izgovor,mod); % n i s (115 i 115 ascii)
         fprintf(fid1,'%s\n',tekst(7*(broj-1)+1:(7*(broj-1)+7)));
           fprintf(fid1,'%s\n','.');
        end
    end
     for izgovor=tren_c:tren_d
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj%d_%d_%d%s.lab"\n',broj,govornik(i),izgovor,mod); % n i s (115 i 115 ascii)
         fprintf(fid1,'%s\n',tekst(7*(broj-1)+1:(7*(broj-1)+7)));
           fprintf(fid1,'%s\n','.');
        end
    end
end
    end 
end
%  **************** BALANCED WORDS **************************
tekst=['MIRKO        ','ZHURKA       ','PETAR        ','DEMONSTRACIJE','STANDARD     ','PIJACA       ','PADAVINE     ','PONEDELJAK   ','GODINA       ','PREDSTAVA    ','KOMPJUTERI   ','INOSTRANSTVO ','DRVO         ','MIRJANA      ','MORE         ','KISHA        ','ZGRADE       ','KLINCI       ','MILAN        ','REZULTATI    ','TELEFON      ','SVETLO       ','PROZOR       ','RUKE         ','LOKAL        ','KLJUCH       ','SUNCE        ','PARE         ','SEF          ','BLOK         '];
for i=1:11
       if(govornik(i)~=govornik3)
        for rec=1:30
    for izgovor=tren_a:tren_b
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec%d_%d_%d%s.lab"\n',rec,govornik(i),izgovor,mod); % n i s (115 i 115 ascii)
         fprintf(fid1,'%s\n',tekst(13*(rec-1)+1:(13*(rec-1)+13)));
            fprintf(fid1,'%s\n','.');
        end
    end
     for izgovor=tren_c:tren_d
        for mod=trening:5:trening
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec%d_%d_%d%s.lab"\n',rec,govornik(i),izgovor,mod); % n i s (115 i 115 ascii)
         fprintf(fid1,'%s\n',tekst(13*(rec-1)+1:(13*(rec-1)+13)));
            fprintf(fid1,'%s\n','.');
        end
    end
end
    end
end
fclose(fid1);
fid2=fopen('an4_test.mlf','w');
fprintf(fid2,'%s\n',['#!MLF!#']);
%  **************** COLORS **************************
tekst=['BELA  ', 'ZHUTA ', 'CRNA  ', 'CRVENA', 'PLAVA ', 'ZELENA'];
for boja=1:6
for govornik_brojac=govornik3:govornik3
    for izgovor=test_a:test_b
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/boja%d_%d_%d%s.lab"\n',boja,govornik_brojac,izgovor,mod); % n i s (115 i 115 ascii)
         fprintf(fid1,'%s\n',tekst(6*(boja-1)+1:(6*(boja-1)+6)));
         fprintf(fid1,'%s\n','.');
        end
    end
end
end

%  **************** NUMBERS **************************
tekst=['NULA   ', 'JEDAN  ', 'DVA    ', 'TRI    ', 'CHETIRI', 'PET    ', 'SHEST  ', 'SEDAM  ', 'OSAM   ', 'DEVET  ', 'DESET  ', 'STO    ', 'HILJADU', 'MILION '];
for broj=1:14
for govornik_brojac=govornik3:govornik3
    if(govornik>=17)     % pomjeraj, jer imamo govornike 14,15,16,18 i 19
        govornik=govornik+1;
    end
    for izgovor=test_a:test_b
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/broj%d_%d_%d%s.lab"\n',broj,govornik_brojac,izgovor,mod); % n i s (115 i 115 ascii)
         fprintf(fid1,'%s\n',tekst(7*(broj-1)+1:(7*(broj-1)+7)));
           fprintf(fid1,'%s\n','.');
        end
    end

end
end 
%  **************** BALANCED WORDS **************************
tekst=['MIRKO        ','ZHURKA       ','PETAR        ','DEMONSTRACIJE','STANDARD     ','PIJACA       ','PADAVINE     ','PONEDELJAK   ','GODINA       ','PREDSTAVA    ','KOMPJUTERI   ','INOSTRANSTVO ','DRVO         ','MIRJANA      ','MORE         ','KISHA        ','ZGRADE       ','KLINCI       ','MILAN        ','REZULTATI    ','TELEFON      ','SVETLO       ','PROZOR       ','RUKE         ','LOKAL        ','KLJUCH       ','SUNCE        ','PARE         ','SEF          ','BLOK         '];
for rec=1:30
for govornik_brojac=govornik3:govornik3
    for izgovor=test_a:test_b
        for mod=test:5:test
         fprintf(fid1,'"C:/htk/TOPGS/base/an4/wav/augn_TST_mat/rec%d_%d_%d%s.lab"\n',rec,govornik_brojac,izgovor,mod); % n i s (115 i 115 ascii)
         fprintf(fid1,'%s\n',tekst(13*(rec-1)+1:(13*(rec-1)+13)));
            fprintf(fid1,'%s\n','.');
        end
    end
end
end
fclose(fid2);