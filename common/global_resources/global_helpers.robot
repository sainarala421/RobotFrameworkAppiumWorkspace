*** Settings ***
Resource        global_filepaths.robot

*** Keywords ***
#==========================================================#
#                          GIVEN                           #
#==========================================================#
User Clicks "${e_ELEMENT_NAME}" "${e_ELEMENT_TYPE}"
    Run And Wait Until Keyword Succeeds
    ...    Click Element    ${${e_ELEMENT_NAME} ${e_ELEMENT_TYPE}}

The "${e_ELEMENT}" Is "${e_ELEMENT_STATE}"
    The "${e_ELEMENT}" Should Be "${e_ELEMENT_STATE}"

#==========================================================#
#                          THEN                            #
#==========================================================#
The "${e_ELEMENT}" Should Be "${e_ELEMENT_STATE}"
    Wait Until Keyword Succeeds    ${TIMEOUT}    ${INTERVAL}
    ...    Run Keyword
    ...    Element Should Be ${e_ELEMENT_STATE}    ${${e_ELEMENT}}

The Elements "${e_ELEMENTS_LIST}" Should Be "${e_ELEMENT_STATE}"
    [Documentation]    This keyword accepts pre-created list of elements or a number of elements separated by a comma as an argument and
    ...    iterates to check if the element is visible
    ...    Argument Example:
    ...    pre-created list of elements: @{t_listOfElements}
    ...    elements separated by comma: ${ELEMENT_1},${ELEMENT_2},${ELEMENT_3},${ELEMENT_4},${ELEMENT_5},${ELEMENT_6},${ELEMENT_7}
    ${t_isCount} =    Get Length    ${e_ELEMENTS_LIST}
    @{t_createdListOfElements} =    Run Keyword If    ${t_isCount} == 1    Split String    @{e_ELEMENTS_LIST}    ,
    @{t_listOfElements}=    Run Keyword If    ${t_isCount} == 1    Set Variable    @{t_createdListOfElements}
    ...    ELSE    Set Variable    @{e_ELEMENTS_LIST}
    : FOR    ${element}    IN    @{t_listOfElements}
    \    The "${element}" Should Be "${e_ELEMENT_STATE}"

#==========================================================#
#                          HELPERS                         #
#==========================================================#
Run And Wait Until Keyword Succeeds
    [Documentation]    This keyword is used in waiting for an element to be visible within the global timeout and interval
   [Arguments]    ${p_keyword}    ${p_arg1}    ${p_arg2}=No Operation
   ${isEqual}=  Run Keyword And Return Status    Should Be Equal As Strings    ${p_arg2}    No Operation
   # Run Keyword If     '${p_arg2}' == 'No Operation'
   Run Keyword If    ${isEqual}
   ...    Wait Until Keyword Succeeds    ${TIMEOUT}    ${INTERVAL}    ${p_keyword}    ${p_arg1}
   ...    ELSE
   ...    Wait Until Keyword Succeeds    ${TIMEOUT}    ${INTERVAL}    ${p_keyword}    ${p_arg1}    ${p_arg2}


#==========================================================#
#                        LAUNCH APPLICATION                #
#==========================================================#
Launch "${e_MOBILE_OS}" Application "${e_APPLICATION_PATH}"
    Setup Desired Capabilities For "${e_MOBILE_OS}" Native App For "${e_APPLICATION_PATH}"
    Open Application    ${DEV.APPIUM_SERVER}    platformName=${DESIRED_CAPABILITY.platformName}
    ...    platformVersion=${DESIRED_CAPABILITY.platformVersion}    deviceName=${DESIRED_CAPABILITY.deviceName}
    ...    app=${DESIRED_CAPABILITY.app}    appPackage=${DESIRED_CAPABILITY.appPackage}
    ...    appActivity=${DESIRED_CAPABILITY.appActivity}



