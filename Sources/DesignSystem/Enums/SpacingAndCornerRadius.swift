//
//  SpacingAndCornerRadius.swift
//  DesignSystem
//
//  Created by Ankit kumar on 19/10/25.
//

import Foundation
import SwiftUI

// MARK: - Spacing Tokens

public enum SpacingToken {
  case spacing01
  case spacing02
  case spacing03
  case spacing04
  case spacing05
  case spacing06
  case spacing07
  case spacing08
  case spacing09
  case spacing10
  case spacing11
  case spacing12
  case spacing13

  public var style: SpacingStyle {
    switch self {
    case .spacing01: return SpacingStyle(token: self, value: 2)
    case .spacing02: return SpacingStyle(token: self, value: 4)
    case .spacing03: return SpacingStyle(token: self, value: 8)
    case .spacing04: return SpacingStyle(token: self, value: 12)
    case .spacing05: return SpacingStyle(token: self, value: 16)
    case .spacing06: return SpacingStyle(token: self, value: 24)
    case .spacing07: return SpacingStyle(token: self, value: 32)
    case .spacing08: return SpacingStyle(token: self, value: 40)
    case .spacing09: return SpacingStyle(token: self, value: 48)
    case .spacing10: return SpacingStyle(token: self, value: 56)
    case .spacing11: return SpacingStyle(token: self, value: 64)
    case .spacing12: return SpacingStyle(token: self, value: 112)
    case .spacing13: return SpacingStyle(token: self, value: 128)
    }
  }
}

public struct SpacingStyle {
  public let token: SpacingToken
  public let value: CGFloat
}

// MARK: - Stroke Tokens

public enum StrokeToken {
  case stroke01
  case stroke02
  case stroke03
  case stroke04
  case stroke05

  public var style: StrokeStyle {
    switch self {
    case .stroke01: return StrokeStyle(token: self, value: 0.5)
    case .stroke02: return StrokeStyle(token: self, value: 0.8)
    case .stroke03: return StrokeStyle(token: self, value: 1)
    case .stroke04: return StrokeStyle(token: self, value: 2)
    case .stroke05: return StrokeStyle(token: self, value: 3)
    }
  }
}

public struct StrokeStyle {
  public let token: StrokeToken
  public let value: CGFloat
}

// MARK: - Corner Radius Tokens

public enum CornerRadiusToken {
  case none
  case xxs
  case xs
  case sm
  case md
  case lg
  case xl
  case xxl
  case full

  public var style: CornerRadiusStyle {
    switch self {
    case .none: return CornerRadiusStyle(token: self, value: 0)
    case .xxs: return CornerRadiusStyle(token: self, value: 2)
    case .xs: return CornerRadiusStyle(token: self, value: 4)
    case .sm: return CornerRadiusStyle(token: self, value: 8)
    case .md: return CornerRadiusStyle(token: self, value: 12)
    case .lg: return CornerRadiusStyle(token: self, value: 16)
    case .xl: return CornerRadiusStyle(token: self, value: 24)
    case .xxl: return CornerRadiusStyle(token: self, value: 32)
    case .full: return CornerRadiusStyle(token: self, value: 999)
    }
  }
}

public struct CornerRadiusStyle {
  public let token: CornerRadiusToken
  public let value: CGFloat
}
