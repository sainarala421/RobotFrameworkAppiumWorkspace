*** Keywords ***

#==========================================================#
#                          HELPERS                         #
#==========================================================#
Run And Wait Until Keyword Succeeds
    [Documentation]    This keyword is used in waiting for an element to be visible within the global timeout and interval
   [Arguments]    ${p_keyword}    ${p_arg1}=No Operation    ${p_arg2}=No Operation
   ${isEqual}=  Run Keyword And Return Status    Should Be Equal As Strings    ${p_arg2}    No Operation
   # Run Keyword If     '${p_arg2}' == 'No Operation'
   Run Keyword If    ${isEqual}
   ...    Wait Until Keyword Succeeds    ${RETRY}    ${RETRY_INTERVAL}    ${p_keyword}    ${p_arg1}
   ...    ELSE
   ...    Wait Until Keyword Succeeds    ${RETRY}    ${RETRY_INTERVAL}    ${p_keyword}    ${p_arg1}    ${p_arg2}
