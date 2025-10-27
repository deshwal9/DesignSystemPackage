//
//  NHSFont.swift
//  DesignSystem
//
//  Created by Ankit Deshwal on 10/10/2025.
//

import Foundation
import SwiftUI

public enum NHSFont {
  // NHS Brand Fonts - Using system fonts for NHS compliance
  case body
  case bodyBold
  case title
  case titleBold
  case caption
  case captionLight
  case heading
  
  public var typography: Font {
    switch self {
    case .body:
      return Font.system(size: 16, weight: .regular, design: .monospaced)
    case .bodyBold:
      return Font.system(size: 16, weight: .bold)
    case .title:
      return Font.system(size: 20, weight: .medium)
    case .titleBold:
      return Font.system(size: 20, weight: .bold)
    case .caption:
      return Font.system(size: 13, weight: .regular)
    case .captionLight:
      return Font.system(size: 13, weight: .light)
    case .heading:
      return Font.system(size: 24, weight: .semibold)
    }
  }
  
}
