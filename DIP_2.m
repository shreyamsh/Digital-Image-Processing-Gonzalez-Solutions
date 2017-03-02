    % EEEN-5337 DIGITAL IMAGE PROCESSING ASSIGNMENT-2
    % MATLAB CODE
    close all;
    clear all;
    clc;
    
    % load image file from the specfied location onto matlab
    I = imread('C:\Users\SVI\Pictures\manvi 1\DSCN1877.jpg');
    figure(1);
    imshow(I);
    title('Original color image'); 
    disp(' ');
    disp('Original Image dimensions:');
    disp(size(I));

    % reduce the size of image to 1/10th the original picture size
    I_orig = imresize(I,0.1);
    disp('Image dimensions after reducing to 1/10th the original size:');
    disp(size(I_orig));
    
    % convert to grayscale image
    I_gray = rgb2gray(I_orig);
    figure(2);
    imshow(I_gray);
    title('Grayscale image ');
    xlabel('This image is obtained by scaling down original image by 10x and converting into grayscale');
    
    % minimum & maximum values in graysacle image
    min_val = min(min(I_gray));
    max_val = max(max(I_gray));
    disp(' ');
    disp('GRAYSCALE IMAGE');
    disp('Dimensions:');
    disp(size(I_gray));
    disp('Minimum Pixel Value : '); disp(min_val);
    disp('Maximum Pixel Value : '); disp(max_val);
    
    % Histogram of the image
    figure(3);
    imhist(I_gray);
    xlabel('Intensity level'); ylabel('No. of pixels');
    title('Histogram of grayscale image');
    
    % Creating binary version of the image
    I_bi = im2bw(I_gray);
    figure(4);
    imshow(I_bi);
    title('Binary version of grayscale image');
    
    % Logical complement operation on the binary image 
    I_not = not(I_bi);
    figure(5);
    imshow(I_not);
    title('Logical complement image of the binary converted image');
    
    % Logical AND and OR operation on the complemented image and the binary image 
    I_and = I_bi & I_not;
    I_or = I_bi | I_not;
    figure(6);
    subplot(1,2,1);    imshow(I_and); xlabel('AND operated');
    subplot(1,2,2);    imshow(I_or); xlabel('OR operated');
    
    % Resizing the original grayscale image
    % The image size is increased by 1.5x
    I_resize = imresize(I_gray,1.5);
    disp(' ');
    disp('Image dimensions after increasing 1.5x the original grayscale image');
    disp(size(I_resize));
    figure(7);
    imshow(I_resize);
    title('Image size increased by 1.5x original grayscale image');
    
    % Rotate the original grayscale image using different interpolation methods
    % The original grayscale image is rotated by 30 degrees
    % 1. Rotation using NEAREST interpolation method
    I_nearst = imrotate(I_gray,30,'nearest');
    figure(8);
    imshow(I_nearst);
    title('Rotation using NEAREST interpolation method');
    % 2. Rotation using BILINEAR interpolation method
    I_bilinear = imrotate(I_gray,30,'bilinear');
    figure(9);
    imshow(I_bilinear);
    title('Rotation using BILINEAR interpolation method');
    % 3. Rotation using BICUBIC interpolation method
    I_bicubic = imrotate(I_gray,30,'bicubic');
    figure(10);
    imshow(I_bicubic);
    title('Rotation using BICUBIC interpolation method');
    
    % Subtract the images rotated using nearest interpolation methods and bicubic methods
    I_sub = I_nearst - I_bicubic;
    figure(11);
    imshow(I_sub);
    title('Image obtained by subtracting bicubic rotated image from nearest interpolation rotated image');
