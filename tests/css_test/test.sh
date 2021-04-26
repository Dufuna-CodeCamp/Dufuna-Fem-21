#!/bin/bash

project_working_directory=$PWD/../../
test_folder=$project_working_directory/tests/
submission_directory="$PWD/../../submissions"

NONE='\033[00m'
BOLD='\x1b[1m'
UNDERLINE='\033[4m'
ITALIC='\x1b[3m'

echo -n "Enter First Name : "
read first_name

echo -n "Enter Last Name : "
read last_name

echo -n "Enter file name & location (e.g html-forms/contact.html) : "
read file

set_folder() {
    first_name=$(echo "$first_name" | tr '[:upper:]' '[:lower:]')
    first_letter=$(echo "${last_name:0:1}" | tr '[:lower:]' '[:upper:]')
    last_substring=$(echo "${last_name:1}" | tr '[:upper:]' '[:lower:]')

    folder_name="$first_name$first_letter$last_substring"
}

set_folder

# Run Tests

failures_dir=$PWD/screenshots/failures
baselines_dir=$PWD/screenshots/baselines
results_dir=$PWD/screenshots/results

# check if failures folder exists and count how many files

if [ -d $failures_dir ]
then
    # delete failures folder
    sudo rm -rf $failures_dir
fi

if [ -d $results_dir ]
then
    # delete results folder
    sudo rm -rf $results_dir
fi

# check if baselines folder exists and count how many files
if [ -d $baselines_dir ]
then
    num_of_tests=`ls $baselines_dir | wc -l`
else
    num_of_tests=0
fi

casperjs test $PWD/csstest.js --concise --file_path=$submission_directory/$folder_name/$file

if [ -d $failures_dir ]
then
    num_of_failures=`ls $failures_dir | wc -l`
else
    num_of_failures=0
fi

# write log file

path_to_log=$test_folder/logfile.json

echo "{" > $path_to_log
echo "  \"stats\": {" >> $path_to_log
echo "    \"tests\": $num_of_tests," >> $path_to_log
echo "    \"passes\": $((num_of_tests-num_of_failures))," >> $path_to_log
echo "    \"failures\": $num_of_failures," >> $path_to_log
echo "    \"owner\": \"$folder_name\"" >> $path_to_log
echo "  }" >> $path_to_log
echo "}" >> $path_to_log

