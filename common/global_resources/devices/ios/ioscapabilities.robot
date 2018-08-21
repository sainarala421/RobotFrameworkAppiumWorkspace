*** Settings ***
[Documentation]    Capabilities constants for iOS devices.

*** Variables ***
# IOS Default Desired Capabilities for iPhone simulator
${DEV.IOS.PLATFORM_VERSION}        11.3
${DEV.IOS.PLATFORM_NAME}           iOS
${DEV.IOS.DEVICE_NAME}             iPhone Simulator
${DEV.IOS.APP}                     %{APP_PATH}iOSApp/CandySearch.app
${DEV.IOS.PACKAGE_NAME}            ${EMPTY}
${DEV.IOS.ACTIVITY_NAME}           ${EMPTY}
