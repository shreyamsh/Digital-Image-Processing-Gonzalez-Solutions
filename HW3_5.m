% Homework #3 Solution 5
% Read the image
f=imread('sunflower.png');
whos;
%figure, imshow(f), title('Original image');

%Image is converted to grayscale 
J=rgb2gray(f);
size(J);
%figure, imshow(J), title('Grayscale image');
%figure, imhist(J), title('Histogram of the image');

% 15x15 filter 

%w=ones(15);
%gd=imfilter(J,w);
%figure, imshow(gd, []);

%15x15 filter applied to the image
%(All elements of the filter are 1's i.e averaging filter)
%a=57*ones(1,1);
%meanFilter=fspecial('average',[57 57]);
%toShow = imfilter(J,meanFilter);
%figure,imshow(toShow), title('57x57 filter image');

% second method
h=ones(207,207)/42849;
I2=imfilter(J,h);
figure, imshow(I2), title('207x207 filter image');