function W_filter=Wiener_img(noise_fft,K,u,v)

T=1;a=0.02;b=0.02;
[M,N]=size(noise_fft);


if(~exist('v','var'))
    v=[-M/2:M/2-1];  % 如果未出现该变量，则对其进行赋值
end
if(~exist('u','var'))
    u=v';  % 如果未出现该变量，则对其进行赋值
end

A=repmat(a.*u,1,M)+repmat(b.*v,M,1);
H=T/pi./A.*sin(pi.*A).*exp(-1i*pi.*A);

H(A==0)=T;% replace NAN

buf=(abs(H)).^2;

F_Wiener=noise_fft./H.*buf./(buf+K);
W_filter=real(ifft2(ifftshift(F_Wiener)));