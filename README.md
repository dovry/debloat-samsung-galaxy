# UNMAINTAINED
- I don't have an android at the moment, so I'm not willing to maintain this repo.

# debloat-samsung-galaxy

## Requirements
* [ADB](https://developer.android.com/studio/command-line/adb)
* Android device
* A USB cable to connect the mobile device, or connect [wirelessly](https://stackoverflow.com/questions/14357705/adb-over-wireless)

## How to run it
First, take a look through packages.txt, or look up what packages are installed on your device before running the script. A quick search usually returns an android enthusiast forum or blog with a list of bloatware.

* Connect your device to your computer
* Get it setup so that `adb devices` lists your device
* Clone this repo
* run `chmod +x debloat.sh`
* run `./debloat.sh`
* wait for the next android update so you can debloat again
