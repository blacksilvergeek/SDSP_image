function img_blur = motion_blur(img1,u,v)


%% Simulate a Motion Blur：H(u,v)
T=1;a=0.02;b=0.02;
[M,N]=size(img1);


if(~exist('v','var'))
    v=[-M/2:M/2-1];  % 如果未出现该变量，则对其进行赋值
end
if(~exist('u','var'))
    u=v';  % 如果未出现该变量，则对其进行赋值
end

A=repmat(a.*u,1,M)+repmat(b.*v,M,1);
H=T/pi./A.*sin(pi.*A).*exp(-1i*pi.*A);
H(A==0)=T;% replace NAN

[X,Y] = meshgrid(1:220,1:220);
% surf(X,Y,abs(H))


F_img1=fftshift(fft2(img1));
F_img1_blur=F_img1.*H;


img_blur =real(ifft2(ifftshift(F_img1_blur)));

% figure
% subplot(1,2,1)
% imshow(img_Blurred)