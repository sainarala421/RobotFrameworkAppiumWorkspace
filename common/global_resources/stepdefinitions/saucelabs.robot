*** Keywords ***
Update SauceLabs Job For Passing Tests
    Comment    Update SauceLabs Job to for passing test cases.
    ${t_testStatus} =    Set Variable If    '${TEST STATUS}'=='PASS'
    ...    true    None
    Run Keyword If    ${g_IS_SAUCELABS}
    ...    Update Saucelabs Test Result    ${s_JOB_ID}    ${t_testStatus}
    ...    %{SAUCE_USERNAME}    %{SAUCE_ACCESS_KEY}

Set Sauce Labs Credentials Of "${e_MOBILE_OS}" Device To "${e_DICTIONARY}" Dictionary
    Comment    Assign sauce labs credentials in capabilities for sauce labs test execution
    Run Keyword If    ${g_IS_SAUCELABS}
    ...    Set To Dictionary    ${e_DICTIONARY}
    ...    username=%{SAUCE_USERNAME}
    ...    accesskey=%{SAUCE_ACCESS_KEY}
    ...    platformName=${DEV.${e_MOBILE_OS}.SAUCELABS.PLATFORM_NAME}
    ...    platformVersion=${DEV.${e_MOBILE_OS}.SAUCELABS.PLATFORM_VERSION}
    ...    deviceName=${DEV.${e_MOBILE_OS}.SAUCELABS.DEVICE_NAME}
    ...    deviceOrientation=${DEV.${e_MOBILE_OS}.SAUCELABS.DEVICE_ORIENTATION}
    ...    app=${DEV.${e_MOBILE_OS}.SAUCELABS.APP}
    ...    build=@{TEST TAGS}[0]
    ...    tags=@{TEST TAGS}

Test Environment Is Sauce Labs
    [Documentation]    Check if test environment is Saucelabs and assign value to global variable.
   ${t_isSauceLabs}=    Run Keyword And Return Status
    ...    Should Contain    ${REMOTE_SERVER.lower()}    saucelabs
    Set Global Variable    ${g_IS_SAUCELABS}    ${t_isSauceLabs}
