*** Settings ***
Library           AppiumLibrary    timeout=60
Library           OperatingSystem
Library           Collections
Library           String
Library           DateTime
Library           XvfbRobot
Library           HttpLibrary.HTTP
Resource          filepaths.robot
Resource          constants.robot
Resource          servers.robot
Resource          stepdefinitions${/}appmanagement.robot
Resource          stepdefinitions${/}assertions.robot
Resource          stepdefinitions${/}capabilities.robot
Resource          stepdefinitions${/}element.robot
Resource          stepdefinitions${/}helpers.robot
Resource          stepdefinitions${/}saucelabs.robot
Resource          devices${/}ios${/}ioscapabilities.robot
Resource          devices${/}android${/}androidcapabilities.robot

#Custom Libraries
Library           ${CUSTOM_LIBRARIES_DIR}etc${/}saucelabskeywords.py
Library           ${CUSTOM_LIBRARIES_DIR}etc${/}canonicalpath.py
