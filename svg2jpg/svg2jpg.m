function svg2jpg(infile, outfile, resolution)
% Renders SVG images at a given DPI.
    previous = pwd;
    cd(fileparts(mfilename('fullpath')))
    javaaddpath(pwd);
    cd(previous);
    
    % Verifies structure of input file.
    
    [inPath, inFileName, inExtension] = fileparts(infile);
    if strcmp(inPath,'')
        inPath = pwd;
    end
    
    if strcmp(inFileName,'')
        error('Please specify a filename');
    end

    if strcmp(inExtension,'')
        inExtension = '.svg';
        
    elseif ~strcmp(inExtension,'.svg')
        error('This may not be an SVG file.');
    end
    
    infile = fullfile(inPath, strcat(inFileName, inExtension));

    % Verifies structure of output file.   
    
    [outPath, outFileName, outExtension] = fileparts(outfile);    

   if strcmp(outPath,'')
        outPath = pwd;
    end
    
    if strcmp(outFileName,'')
        error('Please specify a filename');
    end

    if strcmp(outExtension,'')
        outExtension = '.svg';
        
    elseif ~(strcmp(outExtension,'.jpeg') || strcmp(outExtension,'.jpg'))
        error('This may not be a JPEG file.');
    end

    outfile = fullfile(outPath, strcat(outFileName, outExtension));    

    converter = SaveAsJPEG;
    converter.main({infile, outfile});    

end

