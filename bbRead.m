function [ bbs ] = bbRead( fName )
%BBREAD Summary of this function goes here
%   Detailed explanation goes here
%   This function to read bounding box of UCF Sports format
%   Copy right: Tran Lam An
fId=fopen(fName);
if(fId==-1), error(['unable to open file: ' fName]); end;
bbs = zeros(1, 4);
in = textscan(fId, '%d %d %d %d %*s');
for i = 1:4, 
    bbs(i) = double(in{i});
end
fclose(fId);
end
