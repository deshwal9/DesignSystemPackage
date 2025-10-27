//
//  Image+Extension.swift
//  DesignSystem
//
//  Created by Ankit Deshwal on 12/10/2025.
//


import SwiftUI

public extension Image {
  func centerCropped() -> some View {
    GeometryReader { geo in
      self
        .resizable()
        .scaledToFill()
        .frame(width: geo.size.width, height: geo.size.height)
        .clipped()
    }
  }
  
//  static func iconTemplate(_ icon: NHSIcons) -> Image {
//    return Image(icon.value, bundle: .module)
//      .renderingMode(.template)
//  }

  static func nhsIcon(_ icon: NHSIcons) -> Image {
    return icon.value.image
  }
  
}

