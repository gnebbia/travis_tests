#!/bin/bash

if [ $TRAVIS_OS_NAME = 'osx' ]; then
  pyinstaller --onefile --paths kb/ kb/__main__.py -n kb_$TRAVIS_TAG_osx
elif [ $TRAVIS_OS_NAME = 'windows' ]; then
  pyinstaller --onefile --paths kb/ kb/__main__.py -n kb_$TRAVIS_TAG_win
else
  pyinstaller --onefile --paths kb/ kb/__main__.py -n kb_$TRAVIS_TAG_linux
fi

