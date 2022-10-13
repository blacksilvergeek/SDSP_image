function img_inverse_noise=Inverse_filter_noise(F_noise,u,v)
global a
global b
T=1;
[M,N]=size(F_noise);


if(~exist('v','var'))
    v=[-M/2:M/2-1];  % 如果未出现该变量，则对其进行赋值
end
if(~exist('u','var'))
    u=v';  % 如果未出现该变量，则对其进行赋值
end

A=repmat(a.*u,1,M)+repmat(b.*v,M,1);
H=T/pi./A.*sin(pi.*A).*exp(-1i*pi.*A);

H(A==0)=T;% replace NAN

img_inverse_noise=F_noise./H; % Inverse_noise

img_inverse_noise=real(ifft2(ifftshift(img_inverse_noise)));