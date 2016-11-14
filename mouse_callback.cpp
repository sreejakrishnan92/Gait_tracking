#include "header.h"
void mouse_callback(int  event, int  x, int  y, int  flag, void *param)
{
    Point2f pt;
    Mat img_clone = cropandfit_image.clone();
    if (event == EVENT_LBUTTONDOWN)
    {
        pt.x = x;
        pt.y = y;
        newCoords = true;
        capturePoint.push_back(pt);
        circle(img_clone,pt,2,Scalar(255,0,0,0),CV_FILLED,CV_AA,0);
        imshow("bounding_box",img_clone);
    }
    if (capturePoint.size() == N)
    {
        bool* exitflag = static_cast<bool*>(param);
        *exitflag = true;
    }
}
