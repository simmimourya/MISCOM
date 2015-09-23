function  matrix = MISCOM(b)
zeropos
Sumcol
function Sumcol= sum(matrix);
disp sumcol
function zeropos =find(Sumcol==0);
if zeropos==null
    disp ('we are terminating');
else
    disp zeropos
end

clc
close all;
matrix = b;
% the input matrix
[rows cols] = size(matrix);
% check whether the matrix is square or not
if rows==cols
    matrix
    Sumcol
    while(~isempty(matrix))
        count = 0;
        for i=1:length(zeropos)
            matrix(zeropos(1,i) - count,:) = [];
            count = count + 1;
        end
        count = 0;
        for i=1:length(zeropos)
            matrix(:,zeropos(1,i) - count) = [];
            count = count + 1;
        end 
        matrix
         zeropos = find(Sumcol==0);
        if isempty(matrix)==true
            
            break;
        end
    end
    matrix
else
    disp('incorrect matrix');
end


