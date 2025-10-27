//
//  NHSFontStyle.swift
//  DesignSystem
//
//  Created by Ankit Deshwal on 10/10/2025.
//

import Foundation
import SwiftUI

public enum NHSFontStyle {
    // MARK: - Display Styles (Large Headlines)
    case display01  // Main page titles
    case display02  // Section headers
    case display03  // Subsection headers
    case sample1
    
    public var typography: FontStyleProtocol {
        switch self {
            // Display Styles
        case .display01:
          return NHSTypography_Size(weight: .bold, size: 28, lineHeight: 1.2)
        case .display02:
          return NHSTypography_Size(weight: .regular, size: 28, lineHeight: 0.5)
        case .display03:
          return NHSTypography_Size(weight: .regular, size: 28, lineHeight: 2.0)
        case .sample1:
          return  NHSTypography_Style(style: .body, design: .monospaced)
        }
    }
}

public protocol FontStyleProtocol {
     var design: Font.Design { get }
     var lineHeight: CGFloat { get }
     var letterSpacing: CGFloat { get }
}

public struct NHSTypography_Size : FontStyleProtocol{
  public let size: CGFloat
  public let weight: Font.Weight
  public let lineHeight: CGFloat
  public let letterSpacing: CGFloat
  public let style: Font.TextStyle?
  public let design: Font.Design
  
  public var computedLineHeight: CGFloat {
    return size * lineHeight
  }
  
  public var computedLineSpacing: CGFloat {
    return computedLineHeight - size
  }
  
  init(weight: Font.Weight,
       size: CGFloat,
       lineHeight: CGFloat = 1.0,
       letterSpacing: CGFloat = 0.0,
       design: Font.Design = .default) {
    self.weight = weight
    self.size = size
    self.lineHeight = lineHeight
    self.letterSpacing = letterSpacing
    self.design = design
    self.style = nil
  }
}

public struct NHSTypography_Style: FontStyleProtocol{
 
  public let style: Font.TextStyle
  public let design: Font.Design
  public let lineHeight: CGFloat
  public let letterSpacing: CGFloat
  
//  public var computedLineHeight: CGFloat {
//    return style * lineHeight
//  }
//  
//  public var computedLineSpacing: CGFloat {
//    return computedLineHeight - size
//  }
  
  init(style: Font.TextStyle,
       design: Font.Design = .default, lineHeight: CGFloat = 1.0,
       letterSpacing: CGFloat = 0.0){
    self.style = style
    self.design = design
    self.lineHeight = lineHeight
    self.letterSpacing = letterSpacing
  }
}
