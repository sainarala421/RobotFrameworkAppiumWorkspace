from setuptools import setup

setup(
<<<<<<< HEAD
    name='enhancecustomlibraries',
    version='0.1',
    description=(
        'Collection of Robot Framework Libraries used by Enhance'
=======
    name='appium-libraries',
    version='0.1',
    description=(
        'Appium Libraries'
>>>>>>> RefactoredAndAddedSauceLabs
    ),
    packages=[
        'common/custom_libraries/etc',
    ],
    install_requires=[
<<<<<<< HEAD
        # 'chromedriver_installer',
        'selenium >= 3.8.0, < 3.9',
        'urllib3',
        'python-dateutil >= 2.4.2, < 2.4.3',
        'requests',
=======
        'urllib3',
        'python-dateutil >= 2.4.2, < 2.4.3',
>>>>>>> RefactoredAndAddedSauceLabs
        'robotframework',
        'robotframework-lint',
        'robotframework-pabot',
        'robotframework-ride',
<<<<<<< HEAD
        'robotframework-selenium2library >= 1.8, < 3.0',
        'robotframework-extendedselenium2library >= 0.9, < 1.0',
        'robotframework-xvfb',
        'robotframework-httplibrary',
        'robotframework-requests',
        'robotframework-imaplibrary',
        'robotframework-faker',
        'robotframework-appiumlibrary',
=======
        'robotframework-xvfb',
        'robotframework-faker',
        'robotframework-appiumlibrary',
        'sauceclient',
>>>>>>> RefactoredAndAddedSauceLabs
    ]
)
