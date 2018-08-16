# Robot Framework Mobile Automation Using Appium Library

This repository contains the Robot Framework Appium Automation workspace.
## Directory Structure
Directory                 | Description
------------------------- | -------------
`src/android`             | android test automation suites
`src/ios`                 | iOS test automation suites
`common`                  | contains custom Robot Framework libraries and keywords that will be used by the test suites.
`JenkinsFiles`            | contains the Jenkins file using declarative pipeline syntax for test execution in parallel
`common/custom_libraries` | contains the custom libraries
`common/global_resources` | contains the step definitions, test data and global reusable keywords
`Results`                 | directory for report and logs, created on run time

File                  | Description
--------------------- | --------------------------------
`setup.py`            | prerequisite installation files
`gitignore`           | list of files to be ignored for git
`argument_file.robot` | run time arguments
`README.md`           | read me file

## Prerequisites
Platform            | Application / Requirements    | Links / Notes
------------------- | ----------------------------- | ------------
All (Android / iOS) | Appium Desktop App            | [Link](http://appium.io/downloads.html)
All (Android / iOS) | Python 2.7                    | [Link](https://www.python.org/download/releases/2.7/)
All (Android / iOS) | Git                           | [Link](https://git-scm.com/)
All (Android / iOS) | Sublime Text 2 or VSCode      | [Sublime Text 2 Link](https://www.sublimetext.com/2), [VSCode Link](https://code.visualstudio.com/)
Android             | JDK 8                         | [Link](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
Android             | Android Studio                | [Link](https://developer.android.com/studio/index.html)
Android             | Android SDK                   | See [Android SDK Installation](#android-sdk-installation)
Android             | Emulators                     | See [Android Emulators Setup](#android-emulators-setup)
iOS                 | MacOS                         | Requires a Mac.
iOS                 | Xcode                         | Requires a Mac.
iOS                 | Apple Developer ID            | Required for execution in iOS devices (non-simulator). [Link](https://developer.apple.com/)
iOS                 | Emulators                     | See [iOS Simulators Setup](#ios-simulators-setup)

## Test Applications Used In This Codebase
NOTE: Create a tumblr account and replace the email found in this codebase
- [x] Android App: [Tumblr apk](https://www.dropbox.com/s/atcowcsmi8qn4ym/com.tumblr.apk?dl=0)
- [x] iOS Sample App: [Candy Search](https://koenig-media.raywenderlich.com/uploads/2017/10/CandySearch_4_Finished.zip)

## Optional Applications / Services
- [ ]  :octocat: `git repository for your code` - if you are running on `Jenkins pipeline`
- [ ] [Jenkins war file](https://jenkins.io/download/)
- [ ] [Sauce Labs](https://saucelabs.com/)
- [ ] [Docker](https://www.docker.com/)
- [ ] [Report Portal](http://reportportal.io/)
- [ ] [Phabricator](https://www.phacility.com/) 
- [ ] [archanist](https://github.com/phacility/arcanist), the command line tool for Phabricator

## Installation
## ANDROID MOBILE APP TEST AUTOMATION
### Android SDK Installation
Note: This setup is for MacOS. I cannot guarantee that this will also work for Ubuntu or Windows.

Run the following command in the terminal:
```bash
brew tap caskroom/cask
brew cask install android-sdk
```

### Emulators Setup
Note: You may create an alias for the commands for easy test execution.
1. Download packages. For reference, see [link](https://stackoverflow.com/questions/43275238/how-to-set-system-images-path-when-creating-an-android-avd). 
Run the following in the terminal:
```bash
~/Library/Android/sdk/tools/bin/sdkmanager "system-images;android-23;google_apis;x86"
```
2. Create AVD (Android Virtual Device): Run the following in the terminal, note `echo no |` is optional
```bash
echo no | ~/Library/Android/sdk/tools/bin/avdmanager create avd --force --name testAVD --abi google_apis/x86_64 --package 'system-images;android-23;google_apis;x86_64'
```
* The emulator name is `testAVD`, this is arbitrary and you can assign any value
* We’ll use this name later in running our scripts as a value for the desired capability: `deviceName`
* If there is an error, modify your command to non-64bit:
```bash
echo no | ~/Library/Android/sdk/tools/bin/avdmanager create avd --force --name testAVD --abi google_apis/x86 --package 'system-images;android-23;google_apis;x86'
```
3. List the created AVD, this will give you the list of your created AVDs:
```bash
echo no | ~/Library/Android/sdk/tools/bin/avdmanager list avd
```
4. Run AVD via emulator tool:
```bash
echo no | ~/Library/Android/sdk/tools/emulator @testAVD
```
* This will open an android emulator screen.
* Keyboard shortcuts:
    * Make the screen larger: Command + Arrow Up
    * Make the screen smaller: Command + Arrow Down

### Download And Save The Sample Apps In Your Local Directory
1. Download the sample Android App: [Tumblr apk](https://www.dropbox.com/s/atcowcsmi8qn4ym/com.tumblr.apk?dl=0)
2. Save the file in a local directory.
3. Save the directory / path in environment variable. Example bash command:
```bash
export APP_PATH="/Users/<yourusername>/<yourlocalpath>/"
export PATH=$PATH:$APP_PATH
```

### Environment Variables : Android
```bash
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk:$PATH"
export ANDROID_HOME="/Users/<your user name>/Library/Android/sdk"
export ANDROID_TOOLS="$ANDROID_HOME/tools"
export ANDROID_PLATFORM_TOOLS="$ANDROID_HOME/platform-tools"
export ANDROID_BUILD_TOOLS="$ANDROID_HOME/build-tools"
```

### Environment Variables : Java
```bash
# Java
export JAVA_HOME_8_X64="/usr/bin/java"
export PATH=$PATH:$JAVA_HOME_8_X64
```

### Environment Variables : Tumblr Username and Password
Note: Create a tumblr account to run the tests.
```bash
# Mobile Test Data
export TUMBLR_PASS="<your tumblr password>"
export PATH=$PATH:$TUMBLR_PASS
export TUMBLR_USERNAME="<your tumblr username>"
export PATH=$PATH:$TUMBLR_USERNAME
```

### Optional. Do this manual installation of the apk just to check if you have installed everything correctly.
1. Open Appium
    * In Mac, Appium is located in `Applications` directory.
2. Fillout the following fields:
    * Host: 127.0.0.1 (default is 0.0.0.0)
    * Port: 4723 (default is 4723)
3. Click Start Server button
4. Open a new session
    1. Appium > New Session Window… or Command + N
    2. Select ‘Custom Server’ : for some reason, I can’t run an app via the `Automatic Server`
    3. Fillout the following fields:
        1. Remote Host: `127.0.0.1`
        2. Remote Port: `4723`
        3. Remote Path: `/wd/hub`
        4. SSL: Unchecked! (I’m getting an error if this field is checked)
        5. Click the pencil button on the ‘JSON Representation text field, then copy and paste the following in the JSON Representation text field.
        6. Click the `Save` button (note: this is a really small icon inside JSON Representation field) the `Save As` (Save As is optional, only if you want to go back to your saved json later)
        7. After Clicking Save, the ‘Desired Capabilities’ fields will be populated based on the JSON values.
        8. For some reason, we still need to tweak it! 
            * Look for the `app`, update `text` to `filepath`, note, it clears the field, you need to manually set the value by browsing to the `Tumblr` apk in the directory where you saved it.
        9. Click Start Session
            * If successful, this will open the Tumblr app, Click on any button, it will display the details for that element that you can use for automation. 

JSON (see step 5)
```json
{
  "platformName": "Android",
  "platformVersion": "6.0",
  "deviceName": "testAVD",
  "automationName": "Appium",
  "app": "/Users/<your Mac’s username>/Documents/AppiumWorkspace/apk/com.tumblr.com.apk",
  "appActivity": "com.tumblr.onboarding.PreOnboardingActivity"
}
```
## iOS MOBILE APP TEST AUTOMATION
### Open and Build the iOS [Candy Search App](https://koenig-media.raywenderlich.com/uploads/2017/10/CandySearch_4_Finished.zip)
1. Open XCode.
2. Open the application workspace in XCode. Double-click `CandySearch.xcodeproj`.
3. Build the app. `Product` > `Build` or Press keys `Command + Build`.
4. Get the built app. On the left column, look for `Products` folder and find `CandySearch.app`.
5. Right-click `CandySearch.app` and click `Show in Finder`
    * You have the option to copy it in an accessible directory or just leave it there and take not of the directory or path for usage in Appium.`

### Troubleshooting
> **Error**: `LSOpenURLsWithRole() failed with error -10810 for the file /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app

> **Fix**: Open Xcode and install necessary updates

> **Error**: `No assigned Development Team`

> **Fix**:
> 1. Open the Candy Bar Sample App’s workspace in Xcode
> 2. Select the ‘General’ tab (located at the Project Editor, in the middle top of your screen)
> 3. In ‘Signing’ section, assign a team (or add an account), Note that this requires your Apple ID  

> **Error**: `Bundle Identifier`

> **Fix**: Under ‘Identity’ section, append a unique string to the ‘Bundle Identifier’

> **Error**: An unknown server-side error occurred while processing the command. Original error: Unable to launch WebDriverAgent because of xcodebuild failure: "Carthage binary is not found. Install using `brew install carthage` 

> **Fix**: Install carthage, follow the instruction above, i.e. `brew install carthage`. 

> **Error**: `An unknown server-side error occurred while processing the command. Original error: Could not install app: 'Command 'ios-deploy --id 465z597f28y39ad2e50f4850dd58aa44166832da --bundle /Users/<yourusername>/Documents/AppiumWorkspace/iOSApp/CandySearch.app' exited with code 253'`

> **Fix**:
> Use the path where the app was built.
> In Xcode > Products (folder) > Right-click CandySearch.app > Show in Finder…
> Products folder is located on the left column / window of Xcode

> **Error**:`An unknown server-side error occurred while processing the command. Original error: Unable to launch WebDriverAgent because of xcodebuild failure: "xcodebuild failed with code 65". Make sure you follow the tutorial at https://github.com/appium/appium-xcuitest-driver/blob/master/docs/real-device-config.md. Try to remove the WebDriverAgentRunner application from the device if it is installed and reboot the device.

> **Fix**: https://github.com/appium/appium-xcuitest-driver/blob/master/docs/real-device-config.md`
> You need a valid Apple Developer ID 

### iOS Simulators Setup
Run the following command in the terminal:
```bash
open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
```

### Get iOS Device's `deviceName` and `udid`
1. Connect your iOS Device to Mac:
2. Open terminal run command:
```bash
instruments -s devices
```
3. Copy the device name (including brackets and the device version), and udid 
    * Note: udid is case sensitive
4. See this link for desired capabilities: 
    *   http://appium.io/docs/en/writing-running-appium/caps/index.html

## Running Tests
Method                           | Script
-------------------------------- | -------------
Run all tests in a directory     | `robot -A argument_file.robot src/android`
Run a specific test via filename | `robot -A argument_file.robot src/android/suite/native_app/AndroidTumblrTest.robot`
Run tests by suite               | `robot -A argument_file.robot -s AndroidTumblrTest .`
Run tests by tag                 | `robot -A argument_file.robot -i AndroidTumblrTest .`
Run tests via tag wildcards      | `robot -A argument_file.robot -i Android* .`
 
Running Tests Remotely: Sauce Labs  ---- **STILL UPDATING THIS PART**
----------------------------------
Running tests in Selenium Grid, set `REMOTE_URL` to the Saucelabs URI: `http://ondemand.saucelabs.com/wd/hub`
NOTE: Creat a Sauce Labs account then save the Sauce Labs Username and Access Key as environment variables.

GET SAUCELABS DETAILS:
1. Signup with Sauce Labs: `https://saucelabs.com`.
2. Sign in to Sauce Labs.
3. Click user icon on top right.
3. Go to `User Settings` > Click `Show`.
4. Input user password And click the Access key (which is then AutomAticAlly copied toclipboArd).
5. Get the Sauce labs remote URL.
6. Go to Dashboard > AUTOMATED TESTS tab And copy the URI in the instructions: `http://ondemand.saucelabs.com/wd/hub`.

Save the sauce labs credentials in `bash_profile`
```bash
export SAUCE_USERNAME="<your username>"
export PATH=$PATH:$SAUCE_USERNAME
export SAUCE_ACCESS_KEY="<your sauce labs access key>"
export PATH=$PATH:$SAUCE_ACCESS_KEY
```
Then run the script on Remote URL using the following script.
```bash
robot -A argument_file.robot -v REMOTE_URL:http://ondemand.saucelabs.com/wd/hub -i Android* .
```

Jenkins Setup (Optional)
------------------------
Note: This setup is for mac or ubuntu. For windows, kindly setup these values in Environment Variables
1. Download [Jenkins war file](https://jenkins.io/download/).
2. Extract and move war file to `/etc/jenkinswarfile` directory.
```bash
sudo mv -f ~/Downloads/jenkins.war /etc/jenkinswarfile
```
3. Update `bashrc` or `bash_profile`
```bash
sudo nano ~/.bash_profile
```
4. Add the following in the bash_profile
```bash
# Jenkins
export JENKINWARFILE="/etc/jenkinswarfile"
export PATH=$PATH:$JENKINWARFILE
# Java
export JAVA_HOME_8_X64="/usr/bin/java"
export PATH=$PATH:$JAVA_HOME_8_X64
```
5. Save the changes to bash_profile.
6. Run Jenkins. Use any available port
```bash
java -jar jenkins.war --httpPort=9090
```
7. Open http://localhost:9090, then create a `Pipeline`. Go to `New Item` > `Pipeline`.
8. Enter a name in the `Enter an item name` textfield then click `OK`.
9. Scroll down and select `Pipeline script from scm` as Definition in the `Pipeline` section.
10. Select `Git` in the `SCM` field.
11. Fillout the `Repository URL` with your git workspace uri. 
For this example: `https://github.com/enhanceTAfrancis/RobotFrameworkDemoWorkspace.git`.
12. Fillout the Credentials field with your github credentials.
13. Fillout the `Script Path` text field. For this example: `JenkinsFiles/pipelinetestrunner`.
14. Click Save.
15. `Build` the pipeline you created. The build will initially fail.
16. Rerun the build, and the build button should now be `Build with Parameters`.
17. Click `Build`

Sublime Text 2 Setup for RobotFramework
---------------------------------------
Prerequisite: Sublime Text 2 is installed
1. Go to https://packagecontrol.io/installation 
2. Download [Package Control.sublime-package](https://packagecontrol.io/Package%20Control.sublime-package)
3. Click the `Preferences > Browse Packages…` menu
4. Browse up a folder and then into the `Installed Packages/` folder
5. Copy `Package Control.sublime-package` to `Installed Packages/` folder
6. Restart `Sublime Text 2`
7. Click on `Preferences > Package Control` menu
8. Type `Install Package` then select `Install Package` from the list.
Wait for the installation to complete.
9. After installation, another list will be displayed. Type `Robot
Framework Assistant` and press Enter.
10. Restart Sublime.
11. `Robot Framework` Menu should be visible.

## Additional References
[Key Codes](https://developer.android.com/reference/android/view/KeyEvent#KEYCODE_HOME)

Feel free to reverse engineer and refactor! :rocket:
----------------------------------------------------



