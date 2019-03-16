# Image-Filtering-and-Hybrid-Images-
In this project, image filtering techniques were utilized to implement a hybrid image.

This project was developed for Computer Vision class Spring 2019.

![](https://github.com/ahmedwael19/Image-Filtering-and-Hybrid-Images-/blob/master/hybrid_image.jpg)
![](https://github.com/ahmedwael19/Image-Filtering-and-Hybrid-Images-/blob/master/hybrid_image_scales.jpg)

## Table of content
- [Dataset](#Dataset)
- [Image Filtering](#Image-Filtering)
  1. [Filters used](#Filters-used)
  2. [Algorithm](#Finding-Donors-for-Charity)
  3. [FFT vs time vs built-in](#FFT-vs-time-vs-built-in)
- [Hybrid Image](#Mini-Projects)
    - [1. Results](#1. Results)
    - [Algorithm](#Algorithm)

## Dataset
The dataset is simply 8 images that can be considered as 4 pairs of images as following:
1. Dog and Cat
2. Motorcycle and Bicycle
3. Plane and Bird
4. Fish and Submarine

## Image Filtering

### Filters used
There are 5 different filters used in this part as following:
1. Identity filter: which basically output the same image.
2. Small blur filter: which removes the high frequency components from the image.
3. Large blur filter: which does the same as small blur filter but more aggressively.
4. Sobel filter: which is meanly used for edge detection.
5. Laplacian filter and high pass filter: which does the opposite function of the blur
filter as it passes the high frequencies.

The output of each filter on the cat image is as following:
![](https://github.com/ahmedwael19/Image-Filtering-and-Hybrid-Images-/blob/master/21.JPG)

### Algorithm

1. Get the dimensions of the filter and the image.
2. If the reminder of the rows or the columns with 2 is equal to zero, throw an error.
3. Pad the image using padarray function with the size equal to the ceil of both the
number of rows/2 and the number of columns/2, in both directions.
4. Assign the last index of both the rows and the columns to be the number of rows of
the filter – 1 “row_index_end” and the number of columns – 1 “column_index_end”.
5. convolution_row_index = 1, and the same with columns.
