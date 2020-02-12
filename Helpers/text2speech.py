# pip3 install pyttsx3
# pip3 install SpeechRecognition
# apt-get install portaudio19-dev
# pip3 install --upgrade pyaudio


import pyttsx3
from os import system

import string
import settings
import speech_recognition as sr
import platform
import sys
sys.path.append('../')
from googletrans import Translator


# text to speech
if platform.system() == 'Linux':
    engine = pyttsx3.init('espeak')
    engine.setProperty('rate', 150)
    engine.setProperty('voice', 'english-us')

# speech to text
r = sr.Recognizer()
mic = sr.Microphone()

# English to Simplified Chinese
translator = Translator()

def tts(t):
    exclude = set(string.punctuation)
    t = ''.join(ch for ch in t if ch not in exclude)
    if not len(t):
        return
    #Todo: 'Windows'/'Darwin' TTS
    if platform.system() == 'Linux':
        engine.say(t)
        engine.runAndWait()
    if platform.system() == 'Darwin':
        system('say ' + t)

def stt():
    # set up the response object
    response = {
        "error": None,
        "text": None
    }

    with mic as source:
        r.adjust_for_ambient_noise(source)
        try:
            audio = r.listen(source, timeout = settings.sttTimeout)
        except sr.WaitTimeoutError:
            return response

    # try recognizing the speech in the recording
    # if a RequestError or UnknownValueError exception is caught,
    #     update the response object accordingly
    try:
        response["text"] = r.recognize_google(audio)
    except sr.RequestError:
        # API was unreachable or unresponsive
        response["error"] = "API unavailable"
    except sr.UnknownValueError:
        # speech was unintelligible
        response["error"] = "Unable to recognize speech"

    if response["text"] == 'quit system':
        print("Bye! The test is terminated!")
        sys.exit()
    return response

def en2cn(t):
    try:
        t = translator.translate(t, src='en', dest='zh-cn').text
    except:
        t = ''
    return t
