function F_noise=Gaussian_noise(F_img1_blur)

[M,N]=size(F_img1_blur);

noise_mean = 0;
noise_var = 1e-3;
noise=imnoise(zeros(M), 'gaussian', noise_mean, noise_var);

FFTnoise=fftshift(fft2(noise));

F_noise=FFTnoise + F_img1_blur;