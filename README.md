# **OpenFilter for Vision Processing** <br>
Library for FRC Vision Processing that runs HSV threshholds over the raw vision target image and produces a black and white image.
Before the distance and angle to the vision target can be calculated, the vision target has to be distinguishible from the rest of the image. If the pixels are within the HSV range as the vision target, they turn white, otherwise are black.

##**Documentation**
- ```void config(Mat *img_rgb)``` <br>
Used to config HSV value range for identifying vision targets. Calls ``createHSV(Mat * img)`` which splits the RGB image into HSV channels. Creates a trackbar to adjust the HSV values on the separate HSV channels. The trackbar values are written into H_min, H_max, V_min, V_max, S_min, S_max. When the H,S, and V keys are pressed, it shows the individual channel.

- ```Mat edgeDetectConfig(Mat *img_rgb)``` <br>
Everytime the value on the trackbar changes, the HSV filtering is applied to that image and updated. This uses OpenCV methods for grayscaling the image, applying a blur, and sobel edge detection to see what the image would look like with the set HSV values. It returns the filtered image as a cv::Mat.

- ```void createHash()``` <br>
After the HSV min and max values are configured, this precomputes 3 hash tables (hue, saturation, value) for HSV filtering the image. For i = 0-255, if the i is between the min and max, the hashtable value at index i is set to 255 for white. 

- ```void hashThresh(Mat *img_hsv)```<br>
 HashThresh() interates through the Mat image pixels, and if the HSV value index in the hash table are all 255, the pixel is set to white.

- ```Mat edgeDetect(Mat *img_rgb)```<br>
While edgeDetectConfig(Mat * img) uses OpenCV methods to apply a filter over the image, it's not optimized to be used on the camera stream. It converts the RGB image into HSV, then passes it into hashThresh() to be filtered. It returns an image where only the vision target is white and the background is black.

- ```void writeHSV(string the_file)```<br>
Writes the HSV min and max values into a txt file.

- ```bool readHSV(const string &the_file)```<br>
Reads the HSV min and max values from a file and updates the HSV variables.



  
  

