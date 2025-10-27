//
//  DesignSystem.swift
//  NHS_NativeApp
//
//  Created by Ankit Deshwal on 10/10/2025.
//

import UIKit
import SwiftUI

public struct DesignSystem {
  
  fileprivate static let bundle = Bundle.module
  
//  public static func registerFonts() {
//    // Register FDS fonts
//    NHSFont.allCases.forEach {
//        registerFont(bundle: .module, fontName: $0.rawValue, fontExtension: $0.fileExtension)
//    }
//    
//    // Register NHS fonts (using system fonts, no custom font files needed)
//    // NHS fonts use SF Pro Display/Text which are system fonts
//  }
//  
  fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
    
    guard
      let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
      let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
      let font = CGFont(fontDataProvider)
    else {
      fatalError("Couldn't create font from data")
    }
    
    var error: Unmanaged<CFError>?
    
    CTFontManagerRegisterGraphicsFont(font, &error)
  }
}
