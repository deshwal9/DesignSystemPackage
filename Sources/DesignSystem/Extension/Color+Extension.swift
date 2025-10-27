//
//  Color+Extension.swift
//  DesignSystem
//
//  Created by Ankit Deshwal on 12/10/2025.
//

import SwiftUI


public extension Color {
  static func fromNHS(_ nhsColors: NHSColors) -> Color {
    Color(nhsColors.value, bundle: .module)
  }
  
  init(nhsColor: NHSColors) {
    self = Color.init(nhsColor.value, bundle: .module)
  }
}

public extension View {
  func nhsForegroundColor(_ nhsColors: NHSColors) -> some View {
    return self.foregroundColor(nhsColors.color)
  }
  
  func nhsBackground(_ nhsColors: NHSColors) -> some View {
    return self.background(nhsColors.color)
  }
  
  func nhsTintColor(_ nhsColors: NHSColors) -> some View {
    return self.tint(nhsColors.color)
  }
  
  func nhsBorderColor(_ nhsColors: NHSColors, width: CGFloat = 1) -> some View {
    return self.border(nhsColors.color, width: width)
  }
  func listRowSeparatorColor(_ nhsColors: NHSColors, width: CGFloat = 1) -> some View{
    return self.listRowSeparatorTint(nhsColors.color)
  }
}
