*** Keywords ***
#==========================================================#
#                        LAUNCH APPLICATION                #
#==========================================================#
Set Remote URL
    ${t_remoteURL}=    Set Variable If    ${g_IS_SAUCELABS}
    ...    ${SAUCELABS_SERVER}
    ...    ${DEV.APPIUM_SERVER}
    Set Global Variable    ${s_REMOTE_URL}    ${t_remoteURL}

Open "${e_MOBILE_OS}" Application "${e_APPLICATION_PATH}"
    Setup Desired Capabilities For "${e_MOBILE_OS}" Native App
    Open Application    ${s_REMOTE_URL}    &{s_DESIRED_CAPABILITIES}
