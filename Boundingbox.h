#ifndef boundingbox_h
#define boundingbox_h
#include "BGS_tracking.h"

class Boundingbox:public BGS_tracking
{
protected:
    int index_largestcontour;
    cv::Mat img_bounded;
    cv::Mat img_rectangleinput;
    cv::Rect bounding_rect;
    vector<vector<cv::Point>> contours; 
    cv::Mat img_boundedfit;
    vector<cv::Vec4i> hierarchy;

private:
    const int MAX_BoxWidth=270; //user defined maximum height and width of the person in the image.
    const int MAX_BoxHeight=550;
    cv::Scalar color;

public:
    Boundingbox();//constructor to initialize variable
    Boundingbox(char option);  //constructor to initialize variable with an input variable-option
    void extract_contour(); //extracts the contours the from the output of morphological operations
    void drawbbox();  //draws the bounding box on the person
    void writeresults(const int count,stringstream& filepath1,stringstream& filepath2,stringstream& filepath3);// write ouput frames to the folder "results"
    void showresults(); //Displays the results
    
};


#endif
