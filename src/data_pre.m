code_dir = strcat(pwd,"//src");

data_dir = strcat(pwd,"//data");


% cd(data_dir)
% % Load the data
load(strcat(data_dir, "//img_restoration.mat"));

% https://blog.csdn.net/weixin_41730407/article/details/80455612

% convert from [0,255] -> [0,1]
img1 = I1/255;
img2 = I2/255;

figure;
subplot(1,2,1), imshow(img1);
subplot(1,2,2), imshow(img2);
