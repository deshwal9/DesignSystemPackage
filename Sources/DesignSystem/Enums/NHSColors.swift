//
//  NHSColors.swift
//  DesignSystem
//
//  Created by Ankit kumar on 18/10/25.
//
import SwiftUI

public enum NHSColors {
  case backgroundColor
  case nhsblue
  
  var value: String {
    switch self {
    case .backgroundColor:
      return "background"
    case .nhsblue:
      return "nhsBlue"
    }
  }
  
  var color: Color {
    return Color(self.value, bundle: .module)
  }
  
}

