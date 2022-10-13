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

% Apply inverse filters to optimally recover the image

img1_deblur=Inverse_filter(F_img1_blur);
img2_deblur=Inverse_filter(F_img2_blur);

figure
subplot(1,2,1)
imshow(img1_deblur)
subplot(1,2,2)
imshow(img2_deblur)

% Add Gaussian noise on top of motion blur

F_noise1=Gaussian_noise(F_img1_blur);
F_noise2=Gaussian_noise(F_img2_blur);

Noised1=real(ifft2(ifftshift(F_noise1)));
Noised2=real(ifft2(ifftshift(F_noise2)));

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
% Implement Wiener filters and observe the trade-offs

Wiener_img1=Wiener_img(F_noise1,0.04);
Wiener_img2=Wiener_img(F_noise2,0.04);
figure
subplot(1,2,1)
imshow(Wiener_img1)
subplot(1,2,2)
imshow(Wiener_img2)
