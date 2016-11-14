#ifndef bgstracking_h
#define bgstracking_h
#include "header.h"
class BGS_tracking
{
protected:
    cv::Mat img_input;
    cv::Mat img_foreground;
    string folderNameBGS_result;
    string folderNameBbox_result;
    cv::Mat img_morphoutput;

public:
    char bgs_option;

    BGS_tracking(); //constructor to initialise variable
    ~BGS_tracking();// destructor to delete the dynamically allocated memory
    cv::Mat& morph_operations(); //performs Morphological operations on the foreground extracted frame and returns the image.
    void setvariables(const cv::Mat input_frame); //set the variables when required
    void computebgs(); //computed the background subtraction using the specified algorithm given by the user
    void initializebgs (); // initialises the bgs algorithm and the output filenames/paths for writing the output

private:
    const int size_morphop=3; //size of morphological operation
    IBGS *bgs;
    cv::Mat img_bkgmodel;
    cv::Mat element;

};

#endif
