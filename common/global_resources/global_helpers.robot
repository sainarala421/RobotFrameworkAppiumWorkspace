*** Settings ***
Resource        global_filepaths.robot

*** Keywords ***
#==========================================================#
#                          GIVEN                           #
#==========================================================#
User Clicks "${e_ELEMENT_NAME}"
    Run And Wait Until Keyword Succeeds
    ...    Click Element    ${ ${e_ELEMENT_NAME} }

The "${e_ELEMENT}" Is "${e_ELEMENT_STATE}"
    The "${e_ELEMENT}" Should Be "${e_ELEMENT_STATE}"

#==========================================================#
#                          WHEN                           #
#==========================================================#
User Inputs Text "${e_STRING}" In "${e_ELEMENT_NAME}"
    Run And Wait Until Keyword Succeeds
    ...    Input Text    ${ ${e_ELEMENT_NAME} }    ${e_STRING}

User Inputs Password "${e_STRING}" In "${e_ELEMENT_NAME}"
    Run And Wait Until Keyword Succeeds
    ...    Input Password    ${ ${e_ELEMENT_NAME} }    ${e_STRING}

User Presses "${e_KEY}"
    Run And Wait Until Keyword Succeeds
    ...    Press Keycode    ${ ${e_KEY} }

#==========================================================#
#                          THEN                            #
#==========================================================#
The "${e_ELEMENT}" Should Be "${e_ELEMENT_STATE}"
    Run And Wait Until Keyword Succeeds
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
    \    Run And Wait Until Keyword Succeeds
    ...    Element Should Be ${e_ELEMENT_STATE}    ${element}

# Then: should be used for Then statements
The "${e_ELEMENTS_LIST}" Elements Should Be Loaded Successfully
    [Documentation]    This keyword is used for asserting that the core elements of a page is visible.
    The Elements "@{${e_ELEMENTS_LIST}_CORE_ELEMENTS_LIST}" Should Be "Visible"

#==========================================================#
#                          HELPERS                         #
#==========================================================#
Run And Wait Until Keyword Succeeds
    [Documentation]    This keyword is used in waiting for an element to be visible within the global timeout and interval
   [Arguments]    ${p_keyword}    ${p_arg1}=No Operation    ${p_arg2}=No Operation
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
    ...    app=${DESIRED_CAPABILITY.app}    #appPackage=${DESIRED_CAPABILITY.appPackage}
    ...    appActivity=${DESIRED_CAPABILITY.appActivity}
