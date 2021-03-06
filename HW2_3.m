img=rgb2gray(imread('shrey.jpg'));
whos;
size(img);
%subplot(1,2,1), imshow(img);
%subplot(1,2,2), imhist(img);
%cd=im2double(img);
%c0=mod(cd,2);
%figure 1, imshow(c0);

img_d=double(img);

% 1-bit image
img_1=mod(img_d,2);
figure, imshow(img_1);

%2-bit image
img_2=mod(floor(img_d/2),2);
figure, imshow(img_2);

%3-bit image
img_3=mod(floor(img_d/4),2);
figure, imshow(img_3);

%4-bit image
img_4=mod(floor(img_d/8),2);
figure, imshow(img_4);

%5-bit image
img_5=mod(floor(img_d/16),2);
figure, imshow(img_5);

%6-bit image
img_6=mod(floor(img_d/32),2);
figure, imshow(img_6);

%img_bw=im2bw(img);
%figure, imshow(img_bw);
%img_complement=imcomplement(img_bw);
%figure, imshow(img_complement);
%re=imresize(img,1.5);
%figure, imshow(re);
%rot_nearest=imrotate(img,40,'nearest');
%figure,imshow(rot_nearest);