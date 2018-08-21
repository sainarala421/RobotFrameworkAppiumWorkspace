*** Settings ***
[Documentation]    Server constants

*** Variables ***
${DEV.APPIUM_SERVER}               http://127.0.0.1:4723/wd/hub
${REMOTE_SERVER}                   ${DEV.APPIUM_SERVER}
${SAUCELABS_SERVER}                https://%{SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.saucelabs.com:443/wd/hub
