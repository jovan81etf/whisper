function clean()
 fid = fopen('C:\htk\TOPGS\hmms\hmm00\proto', 'r') ;              % Open source file.
 fgetl(fid) ;                                  % Read/discard line.
 fgetl(fid) ;                                  % Read/discard line.
  fgetl(fid) ;                                  % Read/discard line.
 fgetl(fid) ;                                  % Read/discard line.
 ostatak = fread(fid, Inf) ;                    % Read rest of the file.
 fclose(fid)

 fid1 = fopen('C:\htk\TOPGS\hmms\hmm00\proto1', 'w')  ;   % Open destination file.
 fwrite(fid1, ostatak) ;                         % Save to file.
 fclose(fid1) ;