//
//  ContentView.swift
//  iOS_OTA_ESP32
//  Inspired by: purpln https://github.com/purpln/bluetooth
//  Licence: MIT
//  Created by Claes Hallberg on 1/25/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var ble : BLEConnection
    var body: some View{
        VStack{
            VStack {
                Text("Device : \(ble.name)")
                Text("Upload progress: \(ble.transferProgress, specifier: "%.1f") %")
            }
            HStack{
                Button(action: {
                    ble.startScanning()
                }){
                    Text("connect").padding().overlay(RoundedRectangle(cornerRadius: 15).stroke(colorChange(ble.connected), lineWidth: 2))
                }
                Button(action: {
                    ble.disconnect(forget: false)
                }){
                    Text("disconnect").padding().overlay(RoundedRectangle(cornerRadius: 15).stroke(colorChange(ble.connected), lineWidth: 2))
                }
                Button(action: {
                    ble.disconnect(forget: true)
                }){
                    Text("forget").padding().overlay(RoundedRectangle(cornerRadius: 15).stroke(colorChange(ble.connected), lineWidth: 2))
                }
            }
            HStack{
                Button(action: {
                    ble.sendFile(filename: "testfile", fileEnding: ".bin")
                }){
                    Text("send .bin to ESP32 over OTA").padding().overlay(RoundedRectangle(cornerRadius: 15).stroke(colorChange(ble.connected), lineWidth: 2))
                }
                
            }
            HStack{
                Spacer()
            }
        }.padding().accentColor(colorChange(ble.connected))
    }
}

func colorChange(_ connected:Bool) -> Color{
    if connected{
        return Color.green
    }else{
        return Color.blue
    }
}
