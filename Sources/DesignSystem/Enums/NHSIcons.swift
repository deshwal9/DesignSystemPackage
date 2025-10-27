//
//  NHSIcons.swift
//  DesignSystem
//
//  Created by Ankit kumar on 19/10/25.
//

import Foundation

public enum NHSIcons {
  case ibmLogo
  case profile
  
  var value: NHSIconType{
    switch self {
    case .ibmLogo: return AssetIcon("IbmLogo")
    case .profile: return SystemIcon("person.crop.circle")
    }
  }
  
}
