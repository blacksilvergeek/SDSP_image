
figure,subplot(1,2,1);imshow(img2);title('原图像');
%T = rgb2gray(M);figure;imshow(I);
PSF = fspecial('motion',20,15);
J = imfilter(img2,PSF,'conv','circular');
subplot(1,2,2);imshow(J);title('模糊运动的图像');
imwrite(J, '55.tif');