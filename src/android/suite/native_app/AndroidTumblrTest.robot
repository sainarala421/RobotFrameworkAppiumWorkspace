*** Settings ***
Documentation      [PRODUCT:Android] Test App
Default Tags       AndroidTumblrTest    ANDROID    AVAILABILITY    HIGH
Suite Setup        Launch "Android" Application "${TUMBLR_APP}"
Suite Teardown     Close All Applications
Resource           ${MOBILE_GLOBAL_RESOURCES_FILE_PATH}global_setup.robot
Resource           ${ANDROID_VARIABLE_DIR}tumblr_constants.robot

*** Variables ***
${TUMBLR_APP}           %{APP_PATH}apk/com.tumblr.apk
${DEV.ACTIVITY_NAME}    com.tumblr.onboarding.PreOnboardingActivity
${emailAddress}         mobileautomationtestuser@gmail.com

*** Test Cases ***
Scenario: Returning User Successfully Logs In To Tumblr
    When User Clicks "Login" "Button"
    And User Inputs Text "${emailAddress}" In "Email Field"
    And User Clicks "Continue" "Button"
    And User Inputs Password "%{TUMBLR_PASS}" In "Password Field"
    And User Clicks "Login" "Button"
    Then The "Home Button" Should Be "Visible"
    And The "Account Button" Should Be "Visible"
    And The "Login Button" Should Be "Visible"
