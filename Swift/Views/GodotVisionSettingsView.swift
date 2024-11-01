//
//  GodotVisionSettingsView.swift
//  LLabsVision
//
//  Created by Kevin Watters on 08.10.2024.
//  Developed by Maxim Lanskoy from 02.11.2024.
//

import SwiftUI
import GodotVision

struct GodotVisionSettingsView: View {
    @ObservedObject var godotVision: GodotVisionCoordinator
    
    var body: some View {
        Text("Physics FPS")
        Picker("Physics FPS", selection: $godotVision.physicsTicksPerSecond) {
            Text("30").tag(30)
            Text("60").tag(60)
            Text("90").tag(90)
        }.frame(width: 150).pickerStyle(.palette)
    }
}
