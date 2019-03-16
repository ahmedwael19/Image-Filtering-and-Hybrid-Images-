function output = my_imfilter(image, filter)
% This function is intended to behave like the built in function imfilter()
% when operating in convolution mode. See 'help imfilter'. 
% While "correlation" and "convolution" are both called filtering, 
% there is a difference. From 'help filter2':
%    2-D correlation is related to 2-D convolution by a 180 degree rotation
%    of the filter matrix.

% Your function should meet the requirements laid out on the project webpage.

% Boundary handling can be tricky as the filter can't be centered on pixels
% at the image boundary without parts of the filter being out of bounds. If
% we look at 'help imfilter', we see that there are several options to deal 
% with boundaries. 
% Please recreate the default behavior of imfilter:
% to pad the input image with zeros, and return a filtered image which matches 
% the input image resolution. 
% A better approach is to mirror or reflect the image content in the padding.

% Uncomment to call imfilter to see the desired behavior.
% output = imfilter(image, filter, 'conv');

%%%%%%%%%%%%%%%%
% Your code here
%%%%%%%%%%%%%%%%

[rf, cf] = size(filter); % get the dimensions of the filter
[ri, ci,chi] = size(image);  % get the dimensions of the image

if rem(rf,2) == 0 || rem(cf,2) == 0 % throw error if the filter size is even
    error("Error ! Only Accepting Odd sized filters");
end
image_padded = padarray(image,[floor(rf/2),floor(cf/2)],0,'both'); % image padding

%% Convolution :
row_index_end = rf -1;
column_index_end = cf - 1;

conv_index_row = 1;
conv_index_column = 1;
for row = 1:ri
    for col = 1:ci
        small_image = image_padded(row: row + row_index_end , col : col + column_index_end,:);
        for channel = 1:chi
            conv_image(conv_index_row,conv_index_column,channel) = sum(sum(filter .* small_image(:,:,channel)));
        end
        
        conv_index_column = conv_index_column +1;
    end
    conv_index_column = 1;
    conv_index_row = conv_index_row +1;
end
output = conv_image;




