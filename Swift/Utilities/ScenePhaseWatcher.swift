//
//  ScenePhaseWatcher.swift
//  LLabsVision
//
//  Created by Kevin Watters on 11.10.2024.
//  Developed by Maxim Lanskoy from 02.11.2024.
//

import SwiftUI

struct ScenePhaseWatcher: ViewModifier {
    @Environment(\.scenePhase) private var enviornmentScenePhase
    @Binding var scenePhase: ScenePhase
    
    func body(content: Content) -> some View {
        content.onChange(of: enviornmentScenePhase) { oldValue, newValue in
            scenePhase = newValue
        }
    }
}

extension View {
    func readScenePhaseTo(_ scenePhase: Binding<ScenePhase>) -> some View {
        modifier(ScenePhaseWatcher(scenePhase: scenePhase))
    }
}
