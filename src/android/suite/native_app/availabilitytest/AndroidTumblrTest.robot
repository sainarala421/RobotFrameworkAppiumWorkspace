*** Settings ***
Documentation      [PRODUCT:Android] Login test for tumblr app
Default Tags       AndroidTumblrTest    ANDROID    AVAILABILITY    HIGH
Force Tags         REGRESSION    Mobile
Test Setup         Open "Android" Application "${TUMBLR_APP}"
Suite Teardown     Close All Applications
Resource           ${MOBILE_GLOBAL_RESOURCES_FILE_PATH}libraries.robot
Resource           ${ANDROID_VARIABLE_DIR}tumblr_constants.robot

*** Variables ***
${TUMBLR_APP}           %{APP_PATH}apk/com.tumblr.apk
${DEV.ACTIVITY_NAME}    com.tumblr.onboarding.PreOnboardingActivity

*** Test Cases ***
Scenario: Returning User Successfully Logs In To Tumblr
    When User Clicks "Login Button"
    And User Inputs Text "%{TUMBLR_EMAIL}" In "Email Field"
    And User Clicks "Continue Button"
    And User Clicks "Enter Password Button"
    And User Inputs Password "%{TUMBLR_PASS}" In "Password Field"
    And User Presses "Enter Key"
    Then The "User Dashboard" Elements Should Be Loaded Successfully
