# My-Robot-Framework



## Pre-Requisites
1. Install python
2. Install Pycharm Community Edition

# Steps to Install Dependencies
1. pip install selenium
2. pip install robotframework
3. pip install robotframework-seleniumlibrary
4. pip install webdriver-manager

# Steps to install Plugins in Pycharm
1. Preferences --> Python Interpreter --> Set the Python Version
2. Plugins --> Marketplace --> Type "Hyper Robot Framework Support" (This Plugin Gives Suggestions for Robot Framework Keywords and Also recognizes .robot files)


# Command to run
robot -d <path_to_results_folder> -v ENV:<name_of_environment> <path_to_tests_folder>
