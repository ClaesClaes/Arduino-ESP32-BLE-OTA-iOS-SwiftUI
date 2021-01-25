# Arduino-ESP32-BLE-OTA-iOS
Arduino example for BLE OTA on a ESP32 using an iOS app

This is a demo on how to upload firmware (.bin file) from an iOS app to an ESP32.

The app will auto connect to the ESP32 when it discovers the BLE service UUID of the ESP32 BLE device. It will also re-connect when the ESP32 BLE device returns in range.

Flash the ESP32 device with the .ino file via Arduino IDE and run the App in Xcode (tested on 12.3 for minimum iOS 14.0) on a real device (not in a simulator as they lack physical Bluetooth). 

Press "send .bin to ESP32 over OTA" to start the file transfer. Whatch the "Upload progress percentage". If it stalls reset the ESP32 and restart.
