#!/bin/bash

# Runs the Melissa Global Phone Cloud API Python 3 sample.
#
# This script runs GlobalPhonePython3.py with python3, passing along the license and (if
# supplied) the phone number.
#
# Overall flow:
#   1. Parse the command-line options below.
#   2. Resolve the license (--license, then a prompt, then the MD_LICENSE environment variable).
#   3. Run GlobalPhonePython3.py: with the phone number if one was supplied, otherwise with
#      only the license (the Python program prompts for the number).
#
# Options (each takes a value):
#   --phone     Phone number to test.
#   --license   License string. If omitted, the script prompts for it; if the prompt
#               is left blank, it falls back to MD_LICENSE. Running without --license
#               always prompts, even when MD_LICENSE is set.
#
# Examples:
#   ./GlobalPhonePython3.sh --license "your-license"
#   ./GlobalPhonePython3.sh --phone "800-635-4772" --license "your-license"

######################### Constants ##########################

RED='\033[0;31m' #RED
NC='\033[0m' # No Color

######################### Parameters ##########################

phone=""
license=""

# Read each --flag and its value. A flag with no value, or whose value starts with "-",
# is an error. Unrecognized options are ignored.
while [ $# -gt 0 ] ; do
  case $1 in
    --phone) 
        if [ -z "$2" ] || [[ $2 == -* ]];
        then
            printf "${RED}Error: Missing an argument for parameter \'phone\'.${NC}\n"  
            exit 1
        fi 

        phone="$2"
        shift
        ;;
    --license) 
        if [ -z "$2" ] || [[ $2 == -* ]];
        then
            printf "${RED}Error: Missing an argument for parameter \'license\'.${NC}\n"  
            exit 1
        fi 

        license="$2"
        shift 
        ;;
  esac
  shift
done

########################## Main ############################
printf "\n=================== Melissa Global Phone Cloud API ===================\n"

# Get license (either from parameters or user input)
if [ -z "$license" ];
then
  printf "Please enter your license string: "
  read license
fi

# Check for License from Environment Variables 
if [ -z "$license" ];
then
  license=`echo $MD_LICENSE` 
fi

if [ -z "$license" ];
then
  printf "\nLicense String is invalid!\n"
  exit 1
fi

# Run project
# No phone number supplied -> run with only the license (the program prompts for it);
# otherwise pass the number through.
if [ -z "$phone" ];
then
    python3 GlobalPhonePython3.py --license "$license"
else
    python3 GlobalPhonePython3.py --license "$license" --phone "$phone"
fi
