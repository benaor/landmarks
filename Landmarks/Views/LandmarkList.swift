//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Benjamin Girard on 16/05/2025.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
               ForEach(filteredLandmarks) { Landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: Landmark)
                    } label : {
                        LandmarkRow(landmark: Landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        } detail : { Text("Select a landmark") }
    }
}

#Preview {
    LandmarkList()
}
