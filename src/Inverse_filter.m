function img_inverse=Inverse_filter(F_img1_blur,u,v)

T=1;a=0.02;b=0.02;
[M,N]=size(F_img1_blur);


if(~exist('v','var'))
    v=[-M/2:M/2-1];  % 如果未出现该变量，则对其进行赋值
end
if(~exist('u','var'))
    u=v';  % 如果未出现该变量，则对其进行赋值
end

A=repmat(a.*u,1,M)+repmat(b.*v,M,1);
H=T/pi./A.*sin(pi.*A).*exp(-1i*pi.*A);

H(A==0)=T;% replace NAN


img_inverse=F_img1_blur./H; % Inverse

img_inverse=real(ifft2(ifftshift(img_inverse)));