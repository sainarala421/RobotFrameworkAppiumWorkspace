*** Keywords ***
#==========================================================#
#                          GIVEN                           #
#==========================================================#
User Clicks "${e_ELEMENT_NAME}"
    Run And Wait Until Keyword Succeeds
    ...    Click Element    ${ ${e_ELEMENT_NAME} }

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
