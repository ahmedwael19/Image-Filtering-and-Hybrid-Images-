function [output] = im_fft_conv(image,filter)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[r,c,~] = size(image);
image_f = fftshift(fft2(image));
filter_f = fftshift(fft2(filter,r,c));

filter_f = image_f .*filter_f;

filter_t = ifft2(ifftshift(filter_f));
output = filter_t;

end
