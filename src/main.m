clc, clear

data_pre
% Distort the images with motion blur in Fourier domain.
F_img1_blur = motion_blur(img1);
F_img2_blur = motion_blur(img2);

img_blur1 =real(ifft2(ifftshift(F_img1_blur)));
img_blur2 =real(ifft2(ifftshift(F_img2_blur)));

figure
subplot(1,2,1)
imshow(img_blur1)
subplot(1,2,2)
imshow(img_blur2)
nd3=img_blur1-img1;
msen3=mse(nd3)
nd4=img_blur2-img2;
msen4=mse(nd4)
% Apply inverse filters to optimally recover the image

img1_deblur=Inverse_filter(F_img1_blur);
img2_deblur=Inverse_filter(F_img2_blur);

figure
subplot(1,2,1)
imshow(img1_deblur)
subplot(1,2,2)
imshow(img2_deblur)
d1=img1_deblur-img1;
mse1 = mse(d1)
d2=img2_deblur-img2;
mse2 = mse(d2)
% Add Gaussian noise on top of motion blur

F_noise1=Gaussian_noise(F_img1_blur);
F_noise2=Gaussian_noise(F_img2_blur);

Noised1=real(ifft2(ifftshift(F_noise1)));
Noised2=real(ifft2(ifftshift(F_noise2)));
nd1=Noised1-img1;
msen1=mse(nd1)
nd2=Noised2-img2;
msen2=mse(nd2)

figure
subplot(1,2,1)
imshow(Noised1)
subplot(1,2,2)
imshow(Noised2)

% Implement Inverse filters and observe the trade-offs

Inverse_img1=Inverse_filter_noise(F_noise1);
Inverse_img2=Inverse_filter_noise(F_noise2);

figure
subplot(1,2,1)
imshow(Inverse_img1)
subplot(1,2,2)
imshow(Inverse_img2)
d3=Inverse_img1-img1;
mse3=mse(d3)

d4=Inverse_img2-img2;
mse4=mse(d4)
% Implement Wiener filters and observe the trade-offs

Wiener_img1=Wiener_img(F_noise1,0.04);
Wiener_img2=Wiener_img(F_noise2,0.04);
figure
subplot(1,2,1)
imshow(Wiener_img1)
subplot(1,2,2)
imshow(Wiener_img2)
d5=Wiener_img1-img1;
mse5=mse(d5)
d6=Wiener_img2-img2;
mse6=mse(d6)