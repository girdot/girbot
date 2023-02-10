from setuptools import setup

setup(
    name='girbot',
    version='0.1.0',    
    description='A modular discord chatbot',
    url='https://github.com/girdot/girbot',
    author='Danial Cauley',
    author_email='girdot@gmail.com',
    license='MIT',
    packages=['girbot'],
    scripts=['bin/girbot'],
    install_requires=['discord>=2.1.0'],
    classifiers=[],
)
