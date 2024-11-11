//
//  ContentView.swift
//  VisionProPlayground
//
//  Created by Tim Bachmann on 11.11.2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    var body: some View {
        VStack(spacing: 28) {
            Spacer()
            Text("Mixed Reality Chess")
                .font(.system(size: 32))
            
            Spacer()
            
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
            
            Spacer()

            ToggleImmersiveSpaceButton()
            Spacer()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
