clc;clear all;
image = imread ('img1.jpg');
grayImage=rgb2gray(image);

%% ==================================================================================

[eqGrayImage temp1]=histeq(grayImage);

grayImageHist=imhist(grayImage);
eqGrayImageHist=imhist(eqGrayImage);

ch=cumsum(grayImageHist);
ch2=cumsum(eqGrayImageHist);

figure;
subplot(231);imshow(grayImage);  title('Original gray image ');
subplot(232);imhist(grayImage); title('Histogram of original image');
subplot(233);plot(ch); xlim([0 255]); title('Original cumulative distribution');

subplot(234);imshow(eqGrayImage);title('Equalized image');
subplot(235);imhist(eqGrayImage);title('Equalized histogram');
subplot(236);plot(ch2); xlim([0 255]); title('Equalized cumulative distribution');

