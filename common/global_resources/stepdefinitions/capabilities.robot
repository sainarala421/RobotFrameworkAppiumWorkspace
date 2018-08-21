*** Keywords ***
Setup Desired Capabilities For "${e_MOBILE_OS}" Native App
    [Documentation]     Setup the desired capabilities and check if test environment is SauceLabs
    ${t_DefaultDC}    Create Dictionary    platformName=${DEV.${e_MOBILE_OS}.PLATFORM_NAME}
    Set To Dictionary    ${t_DefaultDC}
    ...    appiumVersion=${DEV.APPIUM.VERSION}
    ...    platformName=${DEV.${e_MOBILE_OS}.PLATFORM_NAME}
    ...    platformVersion=${DEV.${e_MOBILE_OS}.PLATFORM_VERSION}
    ...    deviceName=${DEV.${e_MOBILE_OS}.DEVICE_NAME}
    ...    deviceOrientation=${DEV.ANDROID.SAUCELABS.DEVICE_ORIENTATION}
    ...    app=${DEV.${e_MOBILE_OS}.APP}
    ...    appActivity=${DEV.${e_MOBILE_OS}.ACTIVITY_NAME}

    Test Environment Is Sauce Labs
    Set Remote URL
    Set Sauce Labs Credentials Of "${e_MOBILE_OS}" Device To "${t_DefaultDC}" Dictionary

    Set Suite Variable    ${s_DESIRED_CAPABILITIES}    ${t_DefaultDC}
