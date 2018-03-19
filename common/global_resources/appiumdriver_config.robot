*** Variables ***
${DEV.APPIUM_SERVER}               http://127.0.0.1:4723/wd/hub
# IOS Default Desired Capabilities
${DEV.IOS.PLATFORM_VERSION}        11.2
${DEV.IOS.PLATFORM_NAME}           iOS
${DEV.IOS.DEVICE_NAME}             iPhone Simulator
${DEV.APP.PATH}                    /Users/jarvis2/Documents/AppiumWorkspace/
${DEV.IOS.APP}                     ${DEV.APP.PATH}iOSApp/CandySearch.app
${DEV.IOS.PACKAGE_NAME}            ${EMPTY}
${DEV.IOS.ACTIVITY_NAME}           ${EMPTY}

# Android Default Desired Capabilities
${DEV.ANDROID.PLATFORM_VERSION}    6.0
${DEV.ANDROID.PLATFORM_NAME}       Android
${DEV.ANDROID.DEVICE_NAME}         testAVD
${DEV.ANDROID.APP}                 ${DEV.APP.PATH}apk/com.tumblr.com.apk
${DEV.ANDROID.PACKAGE_NAME}        com.tumblr.onboarding
${DEV.ANDROID.ACTIVITY_NAME}       com.tumblr.onboarding.PreOnboardingActivity

*** Keywords ***
Setup Desired Capabilities For "${e_MOBILE_OS}" Native App For "${e_APPLICATION_PATH}"
    ${t_DefaultDC}    Create Dictionary    platformName=${DEV.${e_MOBILE_OS}.PLATFORM_NAME}
    Set To Dictionary    ${t_DefaultDC}
    ...    platformVersion=${DEV.${e_MOBILE_OS}.PLATFORM_VERSION}
    ...    deviceName=${DEV.${e_MOBILE_OS}.DEVICE_NAME}
    ...    app=${e_APPLICATION_PATH}
    ...    appPackage=${DEV.${e_MOBILE_OS}.PACKAGE_NAME}
    ...    appActivity=${DEV.${e_MOBILE_OS}.ACTIVITY_NAME}
    Log    ${t_DefaultDC}
    Set Suite Variable    ${DESIRED_CAPABILITY}    ${t_DefaultDC}
