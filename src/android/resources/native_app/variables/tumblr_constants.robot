*** Settings ***
Documentation    This file contains all the global constants for Tumblr

*** Variables ***
${GET_STARTED_BUTTON}        id=com.tumblr:id/primary_button
${AGE_TEXT_FIELD}            id=com.tumblr:id/age

${LOGIN_BUTTON}              id=com.tumblr:id/secondary_button
${EMAIL_FIELD}               id=com.tumblr:id/email
${PASSWORD_FIELD}            id=com.tumblr:id/password
${USERNAME_FIELD}            id=com.tumblr:id/username
${NEXT_BUTTON}               id=com.tumblr:id/primary_button

${CONTINUE_BUTTON}           id=com.tumblr:id/primary_button
${ENTER_PASSWORD_BUTTON}     id=com.tumblr:id/use_password_button
${SEND_MAGIC_LINK_BUTTON}    id=com.tumblr:id/use_password_button
${HOME_BUTTON}               id=com.tumblr:id/topnav_dashboard_button_img_active
${SEARCH_BUTTON}             id=com.tumblr:id/topnav_explore_button_img_active
${MESSAGES_BUTTON}           id=com.tumblr:id/notification_button_wrapper
${ACCOUNT_BUTTON}            id=com.tumblr:id/topnav_account_button_img_active
${LOGIN_BUTTON}              id=com.tumblr:id/action_button
${SEE_PASSWORD_BUTTON}       id=com.tumblr:id/custom_end_view

${DASHBOARD_PAGE}              id=com.tumblr:id/pager
${ACTIONS_BUTTON_CONTAINER}    id=com.tumblr:id/actions_container
${ACTIONS_CONTAINER}           id=com.tumblr:id/actions
${SHARE_BUTTON}                id=com.tumblr:id/post_control_share_to_msg
${POST_CONTROL_BUTTON}         id=com.tumblr:id/post_control_reblog
${LIKE_BUTTON}                 id=com.tumblr:id/post_control_likes

${HOME_BUTTON}                 id=com.tumblr:id/topnav_dashboard_button_img_active
${EXPLORE_BUTTON}              id=com.tumblr:id/topnav_explore_button_img_active
${NOTIFICATION_BUTTON}         id=com.tumblr:id/notification_button_wrapper
${ACCOUNT_BUTTON}              id=com.tumblr:id/topnav_account_button_img_active
@{NAVIGATION_BUTTONS}          ${HOME_BUTTON}    ${EXPLORE_BUTTON}    ${NOTIFICATION_BUTTON}
...                            ${ACCOUNT_BUTTON}

${STATUS_BACKGROUND}           id=android:id/statusBarBackground

${POSTCARD_HEADER}             id=com.tumblr:id/post_card_header
${POST_IMAGE}                  id=com.tumblr:id/image
@{POST_CONTENT}                ${POSTCARD_HEADER}    ${POST_IMAGE}

@{USER_DASHBOARD_CORE_ELEMENTS_LIST}    ${STATUS_BACKGROUND}    @{NAVIGATION_BUTTONS}    ${POSTCARD_HEADER}
