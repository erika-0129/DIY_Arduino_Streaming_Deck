# Introduction
The purpose of this project is to test and configure a Streaming Deck built with 10 buttons and 5 knobs.

## Test of Buttons and Knobs
### File: test_file
This file is test only for streaming deck buttons and knobs using the Arduino IDE to ensure connections have been made properly.
It is not required for your project.

## Configuration of Arduino Pro Micro
### File: Streaming_deck_arduino_IDE
This is the C++ code used in the Arduino IDE to give the functions directly to buttons and knobs.
Works with macropad.ahk (AutoHotKey), the Open Source program Deej

## Configuration of Knobs
### File: config.yaml
This file can be found within the [Deej Open-Source](https://github.com/omriharel/deej) project and update it to what you want to use your knobs for.
### Executable Requirement
Important to download Deej and have the executable file in the same folder as your project.

## Configuration of top 5 buttons
In this project, the top 5 buttons have the following functions:

1. Mute Mic
2. Toggle between headphones and speakers
3. Office Govee lights on/off
4. Open Discord
5. Open Streamlabs

### Executable Requirement
Download [AutoHotKey](https://github.com/AutoHotkey/AutoHotkey/releases) v2 to work with your macropad file.

### File: macropad.ahk
This file will have the code necessary to run the 5 buttons above using your computer's systems. 
It can be built using Notepad and it will run as an executable later.
For Govee, you will need to request API access via the app, and get the MAC address for the lights you want to control.

### Executable Optional
If one of your buttons is to toggle between headphones and speakers (like mine is), also download [SoundVolumeView](nirsoft.net/utils/sound_volume_view.html), a small executable that should also be placed on the same folder as your project. 
This will allow AutoHotKey to toggle sound outputs with no lag.

## Configuration of bottom 5 buttons
As this Streaming Deck was designed to work with Streamlabs, the last 5 buttons are configured directly in-app.
1. Starting Soon overlay
2. Be Right Back overlay
3. Live overlay
4. Start Streaming
5. Stop Streaming

## Using the Streaming Deck
Once all code is up and running, for the streaming deck to work on your computer you have to run deej.exe and macropad.ahk together.
To make both deej.exe and macropad.ahk start automatically whenever Windows boots up, add shortcuts for both files to your Windows Startup folder:

1. Press Win + R on your keyboard to open the Run dialog box.
2. Type shell:startup and hit Enter. This opens your personal Windows Startup folder in File Explorer.
3. Open your Streaming_Deck folder in a second File Explorer window.
4. While holding the Alt key on your keyboard, click and drag deej.exe into the Startup folder, then release. This creates a shortcut (you will see a small shortcut arrow on the icon).
5. Do the same for macropad.ahk: hold Alt and drag it into the Startup folder to create its shortcut.
