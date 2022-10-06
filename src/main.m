clc, clear

data_pre

img1_blur = motion_blur(img1);
img2_blur = motion_blur(img2);

figure
subplot(1,2,1)
imshow(img1_blur)
subplot(1,2,2)
imshow(img2_blur)