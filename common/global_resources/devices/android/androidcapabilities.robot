*** Settings ***
[Documentation]    Capabilities constants for android devices.

*** Variables ***
# Android Default Desired Capabilities For Sauce Labs
${DEV.APPIUM.VERSION}               1.8.1

# Local device
${DEV.ANDROID.PLATFORM_VERSION}                6.0
${DEV.ANDROID.PLATFORM_NAME}                   Android
${DEV.ANDROID.DEVICE_NAME}                     testAVD
${DEV.ANDROID.APP}                             %{APP_PATH}apk/com.tumblr.apk
${DEV.ANDROID.PACKAGE_NAME}                    com.tumblr.onboarding
${DEV.ANDROID.ACTIVITY_NAME}                   com.tumblr.onboarding.PreOnboardingActivity
${DEV.ANDROID.DEVICE_ORIENTATION}              portrait

# Sauce Labs Device
${DEV.ANDROID.SAUCELABS.PLATFORM_VERSION}      7.1
${DEV.ANDROID.SAUCELABS.PLATFORM_NAME}         Android
${DEV.ANDROID.SAUCELABS.DEVICE_NAME}           Samsung Galaxy S9 HD GoogleAPI Emulator
${DEV.ANDROID.SAUCELABS.APP}                   sauce-storage:com.tumblr.apk
# ${DEV.ANDROID.SAUCELABS.APP}                   https://www.dropbox.com/s/atcowcsmi8qn4ym/com.tumblr.apk
${DEV.ANDROID.SAUCELABS.PACKAGE_NAME}          com.tumblr.onboarding
${DEV.ANDROID.SAUCELABS.ACTIVITY_NAME}         com.tumblr.onboarding.PreOnboardingActivity
${DEV.ANDROID.SAUCELABS.DEVICE_ORIENTATION}    portrait