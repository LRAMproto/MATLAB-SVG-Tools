function svg2pngtest()
% A simple test of the svg2png MEX function.

success = svg2png('testfile.png');
if (success==0)
    disp('Test completed successfully.');
end

end

