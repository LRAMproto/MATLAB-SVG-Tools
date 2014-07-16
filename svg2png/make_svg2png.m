function make_svg2png()
    previous = pwd;
    cd(fileparts(mfilename('fullpath')))
    
    mex('svg2png.cpp');
    
    cd(previous);
end

