*** Settings ***
Documentation    This file contains all the global constants for IOS

*** Variables ***
# *** app directory *** #
${CANDY_SHARE_APP}            /Users/jarvis2/Documents/AppiumWorkspace/iOSApp/CandySearch.app

# *** locators *** #
# *** headers *** #
${CANDY_SEARCH_HEADER}        xpath=//XCUIElementTypeNavigationBar[@name="Master"]
${BACK_BUTTON}                accessibility_id=Back

# *** content *** #
${CHOCOLATE_BAR_BUTTON}       accessibility_id=Chocolate Bar
${CHOCOLATE_LABEL}            xpath=//XCUIElementTypeStaticText[@name="Chocolate"]
${CHOCOLATE_BAR_LABEL}        xpath=//XCUIElementTypeStaticText[@name="Chocolate Bar"]
${CHOCOLATE_BAR_IMAGE}        xpath=//XCUIElementTypeImage[@name="Chocolate Bar"]

${CHOCOLATE_CHIP_BUTTON}      accessibility_id=Chocolate Chip
${CHOCOLATE_CHIP_LABEL}       xpath=//XCUIElementTypeStaticText[@name="Chocolate Chip"]
${CHOCOLATE_CHIP_LABEL}       xpath=//XCUIElementTypeStaticText[@name="Chocolate Chip"]
${CHOCOLATE_CHIP_IMAGE}       xpath=//XCUIElementTypeImage[@name="Chocolate Chip"]

${SOUR_CHEW_BUTTON}           accessibility_id=Sour Chew
${SOUR_CHEW_LABEL}            xpath=//XCUIElementTypeStaticText[@name="Sour Chew"]
${SOUR_CHEW_LABEL}            xpath=//XCUIElementTypeStaticText[@name="Sour Chew"]
${SOUR_CHEW_IMAGE}            xpath=//XCUIElementTypeImage[@name="Sour Chew"]

${GUMMI_BEAR_BUTTON}          accessibility_id=Gummi Bear
${GUMMI_BEAR_LABEL}           xpath=//XCUIElementTypeStaticText[@name="Gummi Bear"]
${GUMMI_BEAR_LABEL}           xpath=//XCUIElementTypeStaticText[@name="Gummi Bear"]
${GUMMI_BEAR_IMAGE}           xpath=//XCUIElementTypeImage[@name="Gummi Bear"]

${LIQUORICE_BUTTON}           accessibility_id=Liquorice
${LIQUORICE_LABEL}            xpath=//XCUIElementTypeStaticText[@name="Liquorice"]
${LIQUORICE_LABEL}            xpath=//XCUIElementTypeStaticText[@name="Liquorice"]
${LIQUORICE_IMAGE}            xpath=//XCUIElementTypeImage[@name="Liquorice"]

${TOFFEE_APPLE_BUTTON}        accessibility_id=Toffee Apple
${TOFFEE_APPLE_LABEL}         xpath=//XCUIElementTypeStaticText[@name="Toffee Apple"]
${TOFFEE_APPLE_LABEL}         xpath=//XCUIElementTypeStaticText[@name="Toffee Apple"]
${TOFFEE_APPLE_IMAGE}         xpath=//XCUIElementTypeImage[@name="Toffee Apple"]