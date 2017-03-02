
    % This program accepts the desired number of gray levels in a image as
    % input and reproduces output image with the specified gray levels
    
    clc
    clear all
    close all
    
    % Reducing of number of graylevels in an image 
    L = input('Enter the desired number of gray levels (2 - 256): ');
    n = (L-1)/255;
    I = imread('PIC_gray.jpg');
    J = imadjust(I,[0,1],[0,n]);
    figure(); 
    subplot(2,1,1); imshow(I); title('Original image');
    subplot(2,1,2); imhist(I); title('Histogram of original image');
    figure(); 
    subplot(2,1,1);imshow(J); title('Image with reduced no of gray levels');
    subplot(2,1,2);imhist(J); title('Histogram of manipulated image'); 
