#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
second=$2
while [ $# -gt 0 ]; do
  myargs+=("$1")
    case $1 in
        -h | --help )
            echo "You have selected Help Option"
            echo "-v|--verbose for Verbose Option"
            echo "-d|--debug for Debug Mode"
            shift
            ;;
        -v | --verbose)
            echo "Running in Verbose Mode"
            shift
            ;;
        -d | --debug )
            Digit=$(echo $second | wc -w)
                if [[ $Digit -eq 0 ]];then
                     echo "Please enter Debug Level like below"
                     echo "cmdargs.sh -d Loglevel"
                     shift
                else
                if [[ $Digit -ge 3 ]];then
                     echo "Debug Mode Cannot be run with double Digit"
                     shift
                else
                     echo "Running in Debug mode with debug level $second"
                     shift
                fi
                fi
            ;;
        * )
            shift
            echo "Shifted command line, leaving $# things left to process."
            echo "--------------------------"
    esac

done
echo "Done"
