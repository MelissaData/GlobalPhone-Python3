# Melissa - Global Phone Cloud API Python3

## Purpose
This code showcases the Melissa Global Phone Cloud API using Python3.

Please feel free to copy or embed this code to your own project. Happy coding!

For the latest Melissa Global Phone release notes, please visit: https://releasenotes.melissa.com/cloud-api/global-phone/

For further documentation, please visit: https://www.melissa.com/quickstart-guides/global-phone

The console will ask the user for:

- Phone 

And return information of the phone number such as:

- Results
- PhoneNumber
- AdministrativeArea
- CountryAbbreviation
- CountryName
- Carrier
- CallerID
- DST
- InternationalPhoneNumber
- Language
- Latitude and Longitude
- Locality
- PhoneInternationalPrefix
- PhoneCountryDialingCode
- PhoneNationPrefix
- PhoneNationalDestinationCode
- PhoneSubscriberNumber
- UTC
- TimeZoneCode and TimeZoneName
- PostalCode
- Suggestions

## Tested Environments
- Windows 10 64-bit Python 3.10.4, Powershell 5.1
- Ubuntu Linux 20.04.04 LTS 64-bit Python 3.10.4
- Global Phone Cloud API Version 8.4.0.1226

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Download this project
```
git clone https://github.com/MelissaData/GlobalPhone-Python3
cd GlobalPhone-Python3
```

## Windows

#### Install Python3
Before starting, make sure that Python3 has been correctly installed on your machine and your environment paths are configured. 

You can download Python here: 
https://www.python.org/downloads/

To set up your Path to correctly to use the python3 command, execute the following steps:
1) Run Powershell as an administrator 
2) Execute the command: 
`New-Item -ItemType SymbolicLink -Path "Link" -Target "Target"`

    where "Target" is the path to py.exe (by default this should be "C:\Windows\py.exe")\
    and "Link" is the path to py.exe, but "py.exe" is replaced with "python3.exe"\
    For Example:\
    `New-Item -ItemType SymbolicLink -Path "C:\Windows\python3.exe" -Target "C:\Windows\py.exe"`

If you are unsure, you can check by opening a command prompt window and typing the following:
`python3 --version`

![alt text](/screenshots/python_version.png)

#### Run Powershell Script
Parameters:
- -phone: an input phone number
 	
  This is convenient when you want to get results for a specific phone number in one run instead of testing multiple records in interactive mode.  

- -license (optional): a license string to test the Cloud API

There are two modes:

- Interactive 

	The script will prompt the user for input(s), then use the provided input(s) to call the Cloud API. For example:
	```
	.\GlobalPhonePython3.ps1
	```

- Command Line 

	You can pass a phone number and a license string into `-phone` and `-license` parameters respectively to test the Cloud API. For example: 
	```
    .\GlobalPhonePython3.ps1 -phone "800-635-4772" 
    .\GlobalPhonePython3.ps1 -phone "800-635-4772" -license "<your_license_string>"
    ```
	
This is the expected output from a successful setup for interactive mode:

![alt text](/screenshots/output.png)

## Linux

#### Install Python3
Before starting, check to see if you already have the Python3 already installed by entering this command:

`python3 --version`

If the Python3 is already installed, you should see it in the following list:

![alt text](/screenshots/python_version2.png)

As long as the above list contains version `3.xx.xx` (underlined in red), then you can skip to the next step. If your list does not contain version 3, or you get any kind of error message, then you will need to download and install Python3.

To download, run the following commands to add the Microsoft package signing key to your list of trusted keys and add the package repository.

```
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
```

Next, you can now run this command to install the Python3:

```
sudo apt-get update && \
  sudo apt-get install -y python3
```

Once all of this is done, you should be able to verify that the Python3 is installed with the `Python3 --version` command.

#### Run Bash Script
Parameters:
- --phone: an input phone number

  This is convenient when you want to get results for a specific request in one run instead of testing multiple records in interactive mode.  

- --license (optional): a license string to test the Cloud API

There are two modes:

- Interactive 

	The script will prompt the user for input(s), then use the provided input(s) to call the Cloud API. For example:
	```
	./GlobalPhonePython3.sh
	```

- Command Line 

	You can pass a phone number and license string into `--phone` and `--license` parameters respectively to test the Cloud API. For example: 
	```
    ./GlobalPhonePython3.sh --phone "800-635-4772" 
    ./GlobalPhonePython3.sh --phone "800-635-4772" --license "<your_license_string>"
    ```

This is the expected output from a successful setup for interactive mode:

![alt text](/screenshots/output2.png)


## Result Codes
For details about the result codes please refer to https://docs.melissa.com/melissa/result-codes/result-codes-index.html

## Contact Us
For free technical support, please call us at 800-MELISSA ext. 4 (800-635-4772 ext. 4) or email us at tech@melissa.com.

To purchase this product, contact the Melissa sales department at 800-MELISSA ext. 3 (800-635-4772 ext. 3).
