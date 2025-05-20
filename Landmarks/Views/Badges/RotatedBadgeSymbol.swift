//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Benjamin Girard on 19/05/2025.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
  let angle: Angle

  var body: some View {
    BadgeSymbol()
      .padding(-60)
      .rotationEffect(angle, anchor: .bottom)
  }

}

#Preview {
  RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
