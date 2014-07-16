#include "mex.h" // mxArrayToString();
#include "matrix.h" // mexCreateDoubleScalar

void ConvertToSVG(char const *filename, double resolution);

void mexFunction(int nlhs, mxArray *plhs[],
                 int nrhs, const mxArray *prhs[])
{
/* variable declarations here */
    
    if (nrhs != 1){
        mexErrMsgTxt("Not enough input arguments.\n");
    }
            
    char *fname;
    fname = mxArrayToString(prhs[0]);
    
    double res = 300.0;
    
    double success = 0;
    
    plhs[0] = mxCreateDoubleScalar(success);
    
    /* code here */

	ConvertToSVG(fname, res);
    
    /*Variables to free here.*/
    mxFree(fname);
    
    
}

void ConvertToSVG(char const *fname, double res)
{
    printf("Converting %s to png,\nat resolution of %f DPI.\n",fname, res);
    printf("\nPlease wait.\n\n");
    printf("Done!\n");
    return;
}