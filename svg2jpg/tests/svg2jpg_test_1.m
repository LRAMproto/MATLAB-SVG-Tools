function svg2jpg_test_1(varargin)

previous = pwd;
 
    cd(fileparts(mfilename('fullpath')));
    disp('Working...');
    tic;
    for i=1:50
        svg2jpg('testimg.svg','testimg.jpeg');
    end
    toc;
    cd(previous);    
end

