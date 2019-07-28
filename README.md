# **OpenFilter for Vision Processing** <br>
Library for FRC Vision Processing that runs HSV threshholds over the raw vision target image and produces a black and white image.
Before the distance and angle to the vision target can be calculated, the vision target has to be distinguishible from the rest of the image. If the pixels are within the HSV range as the vision target, they turn white, otherwise are black.

##**Documentation**
- ```void config(Mat *img)``` <br>
Used to config HSV value range for identifying vision targets. Calls ``createHSV(Mat * img)`` which splits the RGB image into HSV channels. Creates a trackbar to adjust the HSV values on the separate HSV channels. The trackbar values are written into H_min, H_max, V_min, V_max, S_min, S_max. When the H,S, and V keys are pressed, it shows the individual channel.

- ```edgeDetectConfig(Mat *img)``` <br>


- ```createHash()``` <br>
Precomputes 3 hash tables (hue, saturation, value) for HSV filtering the image. For i = 0-255, if the i is between the min and max, the hashtable value at index i is set to 255 for white. 

  
  

