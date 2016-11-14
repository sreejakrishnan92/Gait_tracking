#include "Boundingbox.h"


Boundingbox::Boundingbox(char option)
{
    bgs_option = option;
    index_largestcontour = 0;
    img_boundedfit = cv::Mat(550, 270, CV_8UC3, cv::Scalar(0,0,0));
    color = (255,255,255);
}

Boundingbox::Boundingbox()
{
    index_largestcontour = 0;
    img_boundedfit = cv::Mat(550, 270, CV_8UC3, cv::Scalar(0,0,0));
    color = (255,255,255);
}

void Boundingbox::drawbbox()
{
    img_boundedfit = cv::Mat(550, 270, CV_8UC3, cv::Scalar(0,0,0));
    img_input.copyTo(img_rectangleinput);
    if ((bounding_rect.width != 0) || (bounding_rect.height != 0))
    {
        //Draw the contour and rectangle
        // drawContours( img_input, contours,index_largestcontour, color, CV_FILLED,8,hierarchy);
        if (bounding_rect.width > MAX_BoxWidth)
            bounding_rect.width = MAX_BoxWidth;
        if (bounding_rect.height > MAX_BoxHeight)
            bounding_rect.height = MAX_BoxHeight;
        //Extract the contour
        img_bounded = img_input(bounding_rect);
        int x = floor((MAX_BoxWidth-bounding_rect.width)/2);
        int y = floor((MAX_BoxHeight-bounding_rect.height)/2);
        img_bounded.copyTo(img_boundedfit.rowRange(y,y+img_bounded.rows).colRange(x,x+img_bounded.cols));
        rectangle(img_rectangleinput, bounding_rect,cv::Scalar(0,255,0),2, 8,0);
    }
}

void Boundingbox::extract_contour ( )
{
    int largest_area = 0;
    cv::Mat temp;
    img_morphoutput.copyTo(temp);
    cv::findContours( temp, contours, hierarchy,CV_RETR_CCOMP,  cv::CHAIN_APPROX_TC89_L1);

    for( int i = 0; i < contours.size(); i++ )
    {
        //  Find the area of contour
        double a = contourArea( contours[i],false);
        if(a > largest_area)
        {
            largest_area = a;
            // Store the index of largest contour
            index_largestcontour = i;
            // Find the bounding rectangle for biggest contour
            bounding_rect = boundingRect(contours[i]);
        }
    }
}


void Boundingbox::writeresults(const int count,stringstream& filepath1,stringstream& filepath2,stringstream& filepath3)
{
    filepath1 <<folderNameBGS_result<<"/image" << count<< ".jpg";
    filepath2 <<folderNameBbox_result<<"/image" << count<< ".jpg";
    filepath3 <<folderNameBbox_result<<"/crop_img" << count<< ".jpg";
    cv::imwrite(filepath1.str(),img_morphoutput);
    cv::imwrite(filepath2.str(),img_rectangleinput);
    cv::imwrite(filepath3.str(),img_boundedfit);
    filepath1.str("");
    filepath2.str("");
    filepath3.str("");
}

void Boundingbox::showresults()
{
    cv::imshow("Input", img_input);
    cv::imshow("Track", img_rectangleinput);
    cv::imshow("forefround",img_morphoutput);
    cv::imshow("bounded", img_boundedfit);
}
