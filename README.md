# debloat-samsung-galaxy

## Requirements
* [ADB](https://developer.android.com/studio/command-line/adb)
* Android device
* USB cable from PC to said device

## How to run it
First, take a look through packages.txt, or look up what packages are installed on your device before running the script. A quick search usually returns an android enthusiast forum or blog with a list of bloatware.

* Connect your device to your computer
* Get it setup so that `adb devices` lists your device
* Clone this repo
* run `chmod +x debloat.sh`
* run `./debloat.sh`
* wait for the next android update so you can debloat again
