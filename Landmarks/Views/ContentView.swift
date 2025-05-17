//
//  ContentView.swift
//  Landmarks
//
//  Created by Benjamin Girard on 16/05/2025.
//
import SwiftUI


struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
