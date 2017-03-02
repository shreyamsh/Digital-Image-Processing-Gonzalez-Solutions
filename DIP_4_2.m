    % DIGITAL IMAGE PROCESSING
    % HOMEWORK-4 MATLAB CODE
   
    
    % This program performs the task of zooming and shrinking an image 
    % by factor specified as input.
    
    clc
    clear all
    close all
    I = imread('PIC_gray.jpg');
    figure(); imshow(I); title('Original Image');
    y = size(I);
    row = y(1);
    col = y(2);
 
    % To shrink image
    r = input('Enter shrinkage factor: ');
    for j=1:1:col/r
        for i=1:1:row
             shrink(i,j)= I(i,j*r);
        end
    end
    figure(); imshow(shrink); title('Shrink in IMAGE');
    
    % To zoom image
    n = input('Enter the zooming factor: ');
    for j=1:1:col
        for i=1:1:row
            zoom(i,j) = shrink(i,ceil(j/n));
        end
    end
    figure(); imshow(zoom); title('Zoom in IMAGE');
    
