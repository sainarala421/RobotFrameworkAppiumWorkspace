from setuptools import setup

setup(
    name='appium-libraries',
    version='0.1',
    description=(
        'Appium Libraries'
    ),
    packages=[
        'common/custom_libraries/etc',
    ],
    install_requires=[
        'urllib3',
        'python-dateutil >= 2.4.2, < 2.4.3',
        'robotframework',
        'robotframework-lint',
        'robotframework-pabot',
        'robotframework-ride',
        'robotframework-xvfb',
        'robotframework-faker',
        'robotframework-appiumlibrary',
        'sauceclient',
    ]
)
