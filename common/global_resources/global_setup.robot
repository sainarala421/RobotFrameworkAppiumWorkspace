*** Settings ***
Library           AppiumLibrary    timeout=60
Library           OperatingSystem
Library           Collections
Library           String
Library           DateTime
Library           XvfbRobot
Library           HttpLibrary.HTTP
Resource          appiumdriver_config.robot
Resource          global_filepaths.robot
Resource          global_helpers.robot

*** Variables ***
#=================================================#
#                Timeout and Wait                 #
#=================================================#
${TIMEOUT}                10x
${INTERVAL}               3s
${INTERNAL_TIMEOUT}       10s
${INTERNAL_INTERVAL}      2s
