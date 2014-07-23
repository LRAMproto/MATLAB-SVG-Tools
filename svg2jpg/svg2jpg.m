function svg2jpg(varargin)
% Renders SVG images at a given DPI.


if (length(varargin) == 2)
    infile = varargin{1};
    outfile = varargin{2};

    % The following adds the Java class to the Java path. It briefly 
    % changes directories to the install path, adds the path as necessary, 
    % then changes back.
    if (exist('SaveAsJPEG','class') ~= 8)
        previous = pwd;
        cd(fileparts(mfilename('fullpath')));
        javaaddpath(pwd);
        cd(previous);
    end
    
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
        outExtension = '.jpeg';
        
    elseif ~(strcmp(outExtension,'.jpeg') || strcmp(outExtension,'.jpg'))
        error('This may not be a JPEG file.');
    end
    
    outfile = fullfile(outPath, strcat(outFileName, outExtension));
    
    converter = SaveAsJPEG;
    converter.main({infile, outfile});
end
end

function val = isValidOpt(str)
opts = {'InputFile','OutputFile','Resolution'};
val = 0;
for i=1:length(opts)
    if strcmp(str,opts{i})
        val = 1;
        break;
    end
end
end
