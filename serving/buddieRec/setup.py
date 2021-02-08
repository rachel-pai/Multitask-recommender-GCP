
from setuptools import find_packages
from setuptools import setup

from distutils.core import setup, Command

REQUIRED_PACKAGES = ['tensorflow_recommenders', 'gcsfs','tensorflow==2.3.0']

setup(
    name='trainer',
    version='0.1',
    install_requires=REQUIRED_PACKAGES,
    packages=find_packages(),
    include_package_data=True,
    description='My training application package.',
)
