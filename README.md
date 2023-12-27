# Lambda Layer Packager

Working and building AWS Lambda layers can be tricky. Many times your local operating system doesn't match the operating system that the Lambda will run on, so a windows package or path won't work for a Linux run time. Wouldn't it be nice if you could just specify the name of the package you need, run a small script and have the entire Layer build for you as a ready to go zip file? Easily build from Windows/Mac/Linux. 


# Files

A few files are needed to accomplish the functionality:

 1. Dockerfile - Defines some docker configurations
 2. Requirements.txt - Defines the name of the python package
 3. runner.sh (Mac/Linux) or runner.ps (Windows) 

## How To Use

1. Open Requirements.txt and enter your python package name and version number, like so: `boto3==1.33.9`
2. Next use the runner script for your operating system. For Windows, `runner.ps` and for Mac/Linux `runner.sh`

The script will build a docker container, grabs the package name from the Requirements.txt file and ultimately creates a package that is zipped in the current working directory that the script is called from. Simply run the above steps for each different package/layer. 
## Future Enhancements

Currently we only support packaging python layers, but this may expand to include additional Lambda supported languages