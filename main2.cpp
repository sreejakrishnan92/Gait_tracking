/* This program tracks the gait of the person in an indoor enviroment. The model assumes that only one person is present in the video. The human is tracked using the background subtraction algorithm. BGSlibrary is used for the background subtraction. User can choose the algorithm from the command prompt by giving options such as:
 1-DPPrati Mediod
 2-V2BGS Gaussian Mixture Model
 3-Multilayer BGS Model
 4-DPWrenGABGS
 5-Frame Difference
by default, the option 1 is selected.

By default "1.avi" video is selected. please specify the path to the video in the command line to use any other input.

Followed by morphological operations, the contours in the foreground frames are detected and the contour with largest area is considered as the person.

The output frames are written in the folder "results" under the user specified background subtraction algorithm namede folder.

Please note that this program was originally written in Linux platform.
*/

//*** HEADERS ***

#include "header.h"
#include "BGS_tracking.h"
#include "Boundingbox.h"

using namespace std;
using namespace cv;

static void show_usage(std::string name)
{
    std::cerr << "Usage: " << name << " <option(s)> SOURCES"
              << "Options:\n"
              << "\t-h,--help\t\t Provides help message\n"
              << "\t-opt,--options\t\tSpecify which background subtraction algorithm to choose: \n\t\t\t 1-DPPrati Mediod \n\t\t\t 2-V2BGS Gaussian Mixture Model \n\t\t\t 3-Multilayer BGS Model \n\t\t\t 4-DPWrenGABGS \n\t\t\t 5-Frame Difference\n "
              << "\t-v, --video \t\t Specify the path to the input video file (the videofile \"1.avi\" is present in the folder)"
              << std::endl;
}

//*** PROGRAM ***
int main(int argc, char* argv[]) 
{
    //Initializing Variables
    int count = 0;
    int key = 0;
    string filename_inputvideo="1.avi"; //default videofilename
    Mat input_frame,img_morphed;
    stringstream filepath1, filepath2, filepath3;
    char option;

    //Considering the command line arguments
    if (argc< 2)
    {
        show_usage(argv[0]);
        return 1;
    }

    for (int i = 1; i<argc; ++i)
    {
        std::string arg = argv[i];
        if ((arg== "-h") || (arg== "--help"))
        {
            show_usage(argv[0]);
            return 0;
        }
        else if ((arg== "-v") || (arg== "--video"))
        {
            if ((i+1)< argc)
            { // Check if the filename is given
                filename_inputvideo = argv[++i]; // save the filename
            }
            else
            { // No file option given.
                std::cerr << "--video requires one argument for filename.extension." << std::endl;
                return 1;
            }
        }
        else if ((arg== "-opt") || (arg== "--options"))
        {
            if ((i+1)< argc)
            { // Check if the option number is given
                if ((argv[i+1][0]<= '5') && (argv[i+1][0]>= '1'))
                    //track.bgs_option = argv[++i][0];// save the option given
                    option = argv[++i][0];// save the option given
            }
            else
            { // No bgs option given.
                std::cerr << "--option requires one argument between 1 and 5." << std::endl;
                return 1;
            }
        }
    }

    Boundingbox Bbox(option);
    //Read the videofile and check if it is open
    VideoCapture capture(filename_inputvideo);
    if( !capture.isOpened() )
        throw "Error when reading the video file- EXITING PROGRAM";

    // Initialize bgs algorithm given in the option
    Bbox.initializebgs ();

    //Continue till the last frame in the video
    while(key != 'q')
    {
        capture >> input_frame;

        //check if the frame is not empty
        if(input_frame.empty())
            break;

        //clear the variables associated for each frame of the video and call background subtraction function and morph operation
        Bbox.setvariables(input_frame);
        Bbox.computebgs();
        img_morphed=Bbox.morph_operations();

        //Draw Bounding box and crop the image
        if (!(img_morphed).empty())
        {
            //extract the largest contour and fit the bounding box
            Bbox.extract_contour();
            Bbox.drawbbox();

            //Write results to the filepath.
            Bbox.writeresults(count,filepath1,filepath2,filepath3);
            count++;

            //Displayresult and input frame
            Bbox.showresults();
            key = cvWaitKey(33);
        }
    }
    capture.release();
    cvDestroyAllWindows();
    return 0;
}



