*** Keywords ***
#==========================================================#
#                          THEN                            #
#==========================================================#
The "${e_ELEMENT}" Is "${e_ELEMENT_STATE}"
    The "${e_ELEMENT}" Should Be "${e_ELEMENT_STATE}"

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
