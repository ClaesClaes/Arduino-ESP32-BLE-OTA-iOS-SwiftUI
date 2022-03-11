# Arduino-ESP32-BLE-OTA-iOS-SwiftUI

*** Please use this (https://github.com/ClaesClaes/Arduino-ESP32-NimBLE-OTA-iOS-SwiftUI) NEW and improved repository instead. It uses NimBLE BLE stack for superior memory footprint. The iOS app also contains more features ******

Arduino example for BLE OTA on a ESP32 using an iOS app

This is a demo on how to upload firmware (.bin file) from an iOS app to an ESP32.

The app will auto connect to the ESP32 when it discovers the BLE service UUID of the ESP32 BLE device. It will also re-connect in situation when the ESP32 BLE device comes out of range and later returns in range.

Flash the ESP32 device with the .ino file via Arduino IDE and run the App in Xcode (tested on 12.3 for minimum iOS 14.0) on a real device (iPhone, iPad. Does not work on a simulator as they lack physical Bluetooth). 

After starting the app, press "send .bin to ESP32 over OTA" to start the OTA file transfer. Watch the "Upload progress percentage" going from 0 to 100%. Once the upload is done the ESP32 waits 1 second and thereafter restarts.

* Ported to Arduino code and based on chegewara example for ESP-IDF: https://github.com/chegewara/esp32-OTA-over-BLE
* Bluetooth class (BLEConnection) in BluetootheLE.swift inspired by:
purpln https://github.com/purpln/bluetooth and 
Chris Hulbert http://www.splinter.com.au/2019/05/18/ios-swift-bluetooth-le/
