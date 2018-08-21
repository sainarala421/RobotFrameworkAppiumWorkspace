*** Settings ***
Documentation      [PRODUCT:iOS] Login test for iOS app
Default Tags       iOSCandyShareTest    IOS    AVAILABILITY    HIGH
Force Tags         REGRESSION    Mobile
Suite Setup        Open "IOS" Application "${CANDY_SHARE_APP}"
Suite Teardown     Close All Applications
Test Teardown      User Clicks "Back Button"
Resource           ${MOBILE_GLOBAL_RESOURCES_FILE_PATH}libraries.robot
Resource           ${IOS_VARIABLE_DIR}candy_share_constants.robot

*** Variables ***
${CANDY_SHARE_APP}    %{APP_PATH}iOSApp/CandySearch.app

*** Test Cases ***
Scenario: User Successfully Opens The Chocolote Bar Page
    Given The "Candy Search Header" Is "Visible"
    When User Clicks "Chocolate Bar Button"
    Then The "Chocolate Label" Should Be "Visible"
    Then The "Chocolate Bar Image" Should Be "Enabled"

Scenario: User Successfully Opens The Chocolote Chip Page
    Given The "Candy Search Header" Is "Visible"
    When User Clicks "Chocolate Chip Button"
    Then The "Chocolate Chip Label" Should Be "Visible"
    Then The "Chocolate Chip Image" Should Be "Enabled"

Scenario: User Successfully Opens The Sour Chew Page
    Given The "Candy Search Header" Is "Visible"
    When User Clicks "Sour Chew Button"
    Then The "Sour Chew Label" Should Be "Visible"
    Then The "Sour Chew Image" Should Be "Enabled"

Scenario: User Successfully Opens The Gummi Bear Page
    Given The "Candy Search Header" Is "Visible"
    When User Clicks "Gummi Bear Button"
    Then The "Gummi Bear Label" Should Be "Visible"
    Then The "Gummi Bear Image" Should Be "Enabled"

Scenario: User Successfully Opens The Liquorice Page
    Given The "Candy Search Header" Is "Visible"
    When User Clicks "Liquorice Button"
    Then The "Liquorice Label" Should Be "Visible"
    Then The "Liquorice Image" Should Be "Enabled"

Scenario: User Successfully Opens The Toffee Apple Page
    Given The "Candy Search Header" Is "Visible"
    When User Clicks "Toffee Apple Button"
    Then The "Toffee Apple Label" Should Be "Visible"
    Then The "Toffee Apple Image" Should Be "Enabled"
