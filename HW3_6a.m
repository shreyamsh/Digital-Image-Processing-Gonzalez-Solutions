
% Homework #3, solution to problem 6
% Read image
f=imread ('building.jpg');
%figure, imshow(f), title('Original image');
% Convert to gray scale and plot the histogram
j=rgb2gray(f);
figure, imhist(j), title('histogram of the image');


%Applying the laplacian filter and plotting the filtered imag
w=fspecial('laplacian',0);

%This will generate image (b) with ALL pixels positive.

g1=imfilter(f,w,'replicate');
figure,imshow(g1,[]), title('Result of Laplacian filter');
lti=imsubtract(f,g1);
figure, imshow(lti), title('Laplacian filter subtracted from the original image');