
    clc
    clear all
    close all
    
    % Reduction of number of graylevels in an image 
    L = input('Enter the desired number of gray levels (2 - 256): ');
    n = (L-1)/255;
    I = imread('PIC_gray.jpg');
    J = imadjust(I,[0,1],[0,n]);
    figure(); 
    subplot(2,1,1); imshow(I); title('Original image');
    subplot(2,1,2); imhist(I); title('Histogram of original image')
    figure(); 
    subplot(2,1,1);imshow(J); title('Image with reduced no of gray levels');
    subplot(2,1,2);imhist(J); title('Histogram of manipulated image');

    % To zoom and shrink an image
    n = input('Enter the zooming factor: ');
    y = size(I);
    row = y(1);
    col = y(2);

    for j=1:1:col
        for i=1:1:row
            zoom(i,j) = I(i,ceil(j/n));
        end
    end

    figure(); imshow(I);
    figure(); imshow(zoom);

    r = input('Enter shrinkage factor: ')
    for j=1:1:col/r
        for i=1:1:row
             shrink(i,j)= zoom(i,j*r);
        end
    end
    figure(); imshow(shrink);
    
    % 
