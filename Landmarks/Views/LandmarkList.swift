//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Benjamin Girard on 16/05/2025.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { Landmark in
                NavigationLink {
                    LandmarkDetail(landmark: Landmark)
                } label : {
                    LandmarkRow(landmark: Landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail : { Text("Select a landmark") }
    }
}

#Preview {
    LandmarkList()
}
