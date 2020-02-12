#!/bin/bash

OS1="Linux"
OS2="MAC"

if [ "$1" = "$OS1" ]; then
    # Linux
    sudo apt-get install python3-tk
    
    sudo pip3 install pytesseract
    #python3.7 -m pip install pytesseract
    
    sudo pip3 install pyttsx3
    sudo pip3 install --upgrade speechrecognition
    sudo pip3 install googletrans
    sudo apt-get install python-pyaudio
    
    sudo apt-get install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0
    sudo apt-get install ffmpeg libav-tools
    sudo apt-get install python3.7-dev
    sudo pip3 install pyaudio
    sudo pip3 install git+https://github.com/mphilli/English-to-IPA.git
    
    sudo pip3 install Vocabulary
    sudo pip3 install wikipedia
    sudo pip3 install nltk
    sudo python3.7 -m nltk.downloader -d /usr/share/nltk_data wordnet
    
    sudo pip3 install PyDrive
    sudo python3.7 -m pip install language_check
    
    sudo apt-get install python3-pil python3-pil.imagetk
    sudo pip3 install PyMuPDF
    sudo pip3 install PySimpleGUI
    sudo pip3 install pdf2image
    
    sudo python3.7 -m pip install -U pillow
    sudo pip3 install Wand
    
    sudo pip3 install PyPDF2
    # ImageMagic
    # sudo apt-get install libmagickwand-dev
elif [ "$1" = "$OS2" ]; then
    # Mac OS
    sudo pip3 install pytesseract
    brew install tesseract
    
    brew install freetype imagemagick
    brew install imagemagick@6
    ln -s /usr/local/Cellar/imagemagick@6/6.9.10-43/lib/libMagickWand-6.Q16.dylib /usr/local/lib/libMagickWand.dylib
    sudo pip3 install Wand
    
    sudo pip3 install git+https://github.com/mphilli/English-to-IPA.git
    
    sudo pip3 install ety
else
    echo "You must specify Linux or MAC"
fi
