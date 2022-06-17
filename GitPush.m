function GitPush(comment, filesToAdd)
    if(nargin < 2)
        filesToAdd = '.';
    end
    
    system(['git add ', filesToAdd]);
    system(['git commit -m "', comment, '"']);
    system('git push')
end

