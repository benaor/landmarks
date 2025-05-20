//
//  CircleImage.swift
//  Landmarks
//
//  Created by Benjamin Girard on 16/05/2025.
//

import SwiftUI

struct CircleImage: View {
  var image: Image

  var body: some View {
    image
      .clipShape(Circle())
      .overlay {
        Circle().stroke(.white, lineWidth: 4)
      }
      .shadow(radius: 7)
  }
}

#Preview {
  CircleImage(image: Image("turleRock"))
}
