function create_proto()
fid=fopen('proto','w');
fprintf(fid,'%s\n',['~o <VecSize> 39 <MFCC_0_D_A_Z> <StreamInfo> 1 39']); % Feature vector
%%
fprintf(fid,'%s\n',['~h "proto"']);
 
  fprintf(fid, '%s\n', ['<BeginHMM>']);
    fprintf(fid, '\t%s\n', ['<NumStates> 5']);
    fprintf(fid, '\t%s\n', ['<State> 2']);
    fprintf(fid, '\t\t%s\n', ['<Mean> 39']);
    fprintf(fid, '\t\t\t%s\n', ['0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0']);
    fprintf(fid, '\t\t%s\n', ['<Variance> 39']);
    fprintf(fid, '\t\t\t%s\n', ['1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1']);
    fprintf(fid, '\t%s\n', ['<State> 3']);
    fprintf(fid, '\t\t%s\n', ['<Mean> 39']);
    fprintf(fid, '\t\t\t%s\n', ['0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0']);
    fprintf(fid, '\t\t%s\n', ['<Variance> 39']);
    fprintf(fid, '\t\t\t%s\n', ['1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1']);
    fprintf(fid, '\t%s\n', ['<State> 4']);
    fprintf(fid, '\t\t%s\n', ['<Mean> 39']);
    fprintf(fid, '\t\t\t%s\n', ['0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0']);
    fprintf(fid, '\t\t%s\n', ['<Variance> 39']);
    fprintf(fid, '\t\t\t%s\n', ['1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1']);
    fprintf(fid, '\t%s\n', ['<TransP> 5']);
    fprintf(fid, '\t\t%s\n', ['0 1 0 0 0']);
    fprintf(fid, '\t\t%s\n', ['0 0.6 0.4 0 0']);
    fprintf(fid, '\t\t%s\n', ['0 0 0.6 0.4 0']);
    fprintf(fid, '\t\t%s\n', ['0 0 0 0.7 0.3']);
    fprintf(fid, '\t\t%s\n', ['0 0 0 0 0']);
   fprintf(fid, '%s\n', ['<ENDHMM>']);
fclose(fid);
end