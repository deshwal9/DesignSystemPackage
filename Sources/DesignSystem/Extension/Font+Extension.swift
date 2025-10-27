//
//  Font+NHS.swift
//  DesignSystem
//
//  Created by Ankit Deshwal on 10/10/2025.
//

import SwiftUI

public extension Font {
    
  static func fromNHS(_ nhsFontStyle: NHSFontStyle) -> Font {
      let typography = nhsFontStyle.typography
      if let sizeStyle = typography as? NHSTypography_Size {
          return Font.system(
              size: sizeStyle.size,
              weight: sizeStyle.weight,
              design: sizeStyle.design
          )
      } else if let styleBased = typography as? NHSTypography_Style {
          return Font.system(
              styleBased.style,
              design: styleBased.design
          )
      }
      // Fallback (you could also throw an error or return a default)
      return Font.body
  }
    
    // MARK: - Convenience Methods for Common NHS Fonts

    /// NHS Display Font - Large headlines
    static var nhsDisplay: Font {
        return Font.fromNHS(.display01)
    }
    
}
