//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Benjamin Girard on 16/05/2025.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @State private var modelData = ModelData()

  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(modelData)
    }
  }
}
