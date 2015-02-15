function newfile = checkfile()
    dir_content = dir;
    filenames = {dir_content.name};
    current_files = filenames;
    while true
      dir_content = dir;
      filenames = {dir_content.name};
      newfile = setdiff(filenames,current_files);
      len = size(filenames);    
      fileID = fopen('data2.txt', 'w');
      if ~isempty(newfile)
          for i = 1:len
              store = filenames(i);
              if (((strcmp(store(len-3:len), 'png'))) || ((strcmp(store(len-3:len), 'jpg'))))
                  fprintf(fileID, '%d \t %c', compare(store, newfile), char(store));
              end
          end       
        % deal with the new files
        current_files = filenames;
      else
        fprintf('no new files\n')
      end      
      fclose(fileID);
      pause(1);
    end
