from setuptools import setup

setup(
    name='enhancecustomlibraries',
    version='0.1',
    description=(
        'Collection of Robot Framework Libraries used by Enhance'
    ),
    packages=[
        'common/custom_libraries/etc',
    ],
    install_requires=[
        # 'chromedriver_installer',
        'selenium >= 3.8.0, < 3.9',
        'urllib3',
        'python-dateutil >= 2.4.2, < 2.4.3',
        'requests',
        'robotframework',
        'robotframework-lint',
        'robotframework-pabot',
        'robotframework-ride',
        'robotframework-selenium2library >= 1.8, < 3.0',
        'robotframework-extendedselenium2library >= 0.9, < 1.0',
        'robotframework-xvfb',
        'robotframework-httplibrary',
        'robotframework-requests',
        'robotframework-imaplibrary',
        'robotframework-faker',
        'robotframework-appiumlibrary',
    ]
)
