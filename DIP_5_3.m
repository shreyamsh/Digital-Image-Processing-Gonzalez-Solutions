%Code for converting RGB image to web-safe RGB
close all
clear all
I=imread('cube.tif');% Reads the image
oI=I;% Stores a copy of the image for later comparision
t=[25 76 127 178 229];%Threshold values for quatization 
for c=1:3%Loop for operating on each channel
    ch=I(:,:,c);%Accesses RGB channels for c=1,2 and 3 respectively
    [m,n]=size(ch);%Gets size of the channel
    for i=1:m%Iterate through all pixels
        for j=1:n
            if(ch(i,j)<=t(1,1))%If intensity value is less than 25 then over write 0 intensity value
                ch(i,j)=0;
            end
            if(ch(i,j)>t(1,1) && ch(i,j)<=t(1,2))%If intensity value is between 25 and 76 then over write 51 intensity value
                ch(i,j)=51;
            end
            if(ch(i,j)>t(1,2) && ch(i,j)<=t(1,3))%If intensity value is between 76 and 127 then over write 102 intensity value
                ch(i,j)=102;
            end
            if(ch(i,j)>t(1,3) && ch(i,j)<=t(1,4))%If intensity value is between 127 and 178 then over write 153 intensity value
                ch(i,j)=153;
            end
            if(ch(i,j)>t(1,4) && ch(i,j)<=t(1,5))%If intensity value is between 178 and 229 then over write 204 intensity value
                ch(i,j)=204;
            end
            if(ch(i,j)>t(1,5))%If intensity value is greater than 204 then over write 255 intensity value
                ch(i,j)=255;
            end
        end
    end
    I(:,:,c)=ch;%Stores new channel layer to the image
end
figure,set(gcf,'name','Original Full RGB Image Cube'),imshow(oI)%Displays original image
figure,set(gcf,'name','Web-Safe RGB Image Cube'),imshow(I)%Displays converted web-safe image