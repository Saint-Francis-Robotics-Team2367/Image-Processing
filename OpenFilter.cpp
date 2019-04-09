//
//  OpenFilter.cpp
//  Add Filters
//
//  Created by Vivian Zhu on 11/17/18.
//  Copyright © 2018 Vivian Zhu. All rights reserved.
//

#include "OpenFilter.hpp"

// constructor
Filter::Filter(void){
    this->h = new Mat(); // h is hue
    this->s = new Mat(); // s is saturation
    this->v = new Mat(); // v is value/brightness
    h_min = 0;
    h_max = 0;
    s_min = 0;
    s_max = 0;
    v_min = 0;
    v_max = 0;
}

// returns h pointer
Mat* Filter::getH()
{
    return this->h;
}

// returns s pointer
Mat* Filter::getS()
{
    return this->s;
}

// returns v pointer
Mat* Filter::getV()
{
    return this->v;
}

void Filter::writeHSV(string the_file)
{
    ofstream myfile;
    myfile.open (the_file);
    myfile << h_min << endl << h_max << endl << s_min << endl << s_max
    << endl << v_min << endl << v_max;
    myfile.close();
}

bool Filter::readHSV(const string &the_file)
{
    ifstream inFile(the_file);
    if (inFile >> h_min >> h_max >> s_min >> s_max >> v_min >> v_max)
    {
        return true;
    }
    return false;
}

// converts 1 HSV image to 3 images (one for each H, S, and V values)
void Filter::createHSV(Mat *img)
{
    // variables
    Mat img_hsv;

    cvtColor(*img, img_hsv, COLOR_BGR2HSV);

    // save H, S, and V values into separate images
    std::vector<Mat> channels;
    split(img_hsv, channels);
    *this->h = channels[0];
    *this->s = channels[1];
    *this->v = channels[2];
}

// allows the user to continuously edit the h, s, v min & max threhold values
void Filter::config(Mat img)
{
    createHSV(&img);

    resize(img, img, Size(img.cols/3, img.rows/3));
    const char *windowLocal = "Test";

    waitKey(100);

    waitKey(100);
    imshow(windowLocal, img);

    createTrackbar("H min value", windowLocal, &h_min, Filter::MAX_BINARY_VALUE);
    createTrackbar("H max value", windowLocal, &h_max, Filter::MAX_BINARY_VALUE);

    createTrackbar("S min value", windowLocal, &s_min, Filter::MAX_BINARY_VALUE);
    createTrackbar("S max value", windowLocal, &s_max, Filter::MAX_BINARY_VALUE);

    createTrackbar("V min value", windowLocal, &v_min, Filter::MAX_BINARY_VALUE);
    createTrackbar("V max value", windowLocal, &v_max, Filter::MAX_BINARY_VALUE);

    waitKey(100);

}

void Filter::createHash(int min1, int max1, int min2, int max2, int min3,int max3, int (&hash1)[255],int (&hash2)[255], int (&hash3)[255] )
{
   //start applying hash threshold on the most limiting HSV value
   for (int i =0; i< 255; i++){
      h_hash[i] =0;
      s_hash[i] =0;
      v_hash[i] =0;

      if(i > min1 && i < max1){
         hash1[i] =1;

         if(i > min2 && i < max2){
            hash2[i] =1;

            if(i > min3 && i < max3){
               hash3[i] =1;
            }
         }
      }
   }

}

// takes thresholded h, s, and v images and stacks them, applying a blur,
// then uses Sobel for edge detection
Mat Filter::edgeDetect(Mat *img)
{
    Mat temp_img, stacked_img, edge_img;

   int h_range = h_min - h_max;
   int s_range = s_min - s_max;
   int v_range = v_min - v_max;

   if(h_range < s_range && h_range < v_range){
      if (s_range < v_range){
         createHash(h_min, h_max, s_min, s_max, v_min, v_max, h_hash, s_hash, v_hash);
      }
      else{
         createHash(h_min, h_max, v_min, v_max, s_min, s_max, h_hash, v_hash, s_hash);
      }
   }
   else if(s_range < h_range && s_range < v_range){
      if(h_range < v_range){
         createHash(s_min, s_max,h_min, h_max, v_min, v_max, s_hash, h_hash, v_hash);
      }
      else{
         createHash(s_min, s_max, v_min, v_max, h_min, h_max, s_hash, v_hash, h_hash);
      }
   }
   else if(v_range < h_range && v_range < s_range){
      if(h_range < s_range){
         createHash(v_min, v_max, h_min, h_max, s_min, s_max, v_hash, h_hash, s_hash);
      }
      else{
         createHash(v_min, v_max, s_min, s_max, v_min, v_max, v_hash, s_hash, h_hash);
      }

   }



    createHSV(img);

  /*  thresh(this->h, h_min, h_max);
    thresh(this->s, s_min, s_max);
    thresh(this->v, v_min, v_max); */

    // stacking H, S, and V into one picture
    temp_img = *h & *s;
    stacked_img = temp_img & *v;

    // Sobel
    int ksize = 1;
    int scale = 4;
    int delta = 0;
    int ddepth = CV_16S;
    GaussianBlur(stacked_img, edge_img, Size(3, 3), 0, 0, BORDER_DEFAULT);
    Mat grad_x, grad_y;
    Mat abs_grad_x, abs_grad_y;
    Sobel(edge_img, grad_x, ddepth, 1, 0, ksize, scale, delta, BORDER_DEFAULT);
    Sobel(edge_img, grad_y, ddepth, 0, 1, ksize, scale, delta, BORDER_DEFAULT);
    convertScaleAbs(grad_x, abs_grad_x); // converting back to CV_8U
    convertScaleAbs(grad_y, abs_grad_y);
    addWeighted(abs_grad_x, 0.5, abs_grad_y, 0.5, 0, stacked_img);

    return stacked_img;
}
