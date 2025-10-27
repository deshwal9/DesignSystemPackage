//
//  NHSColorsExample..swift
//  DesignSystem
//
//  Created by Ankit Deshwal on 22/10/2025.
//

import SwiftUI

/// Example usage of NHSFonts system
/// This file demonstrates how to use the NHS font system in your NHS Native App
public struct NHSColorExample: View {
  public init() {}
  
  public var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 20) {
        Group {
          Color(.blue)
            .frame(width: 200, height: 50)
            .cornerRadius(CornerRadiusToken.xl.style.value)
          
          //MARK: Ways of set NHS Color type
          Color(nhsColor: .nhsblue)
            .frame(width: 200, height: 50)
            .cornerRadius(CornerRadiusToken.xl.style.value)
        
          VStack{}
            .frame(width: 200, height: 50)
            .nhsBackground(.nhsblue)
            .cornerRadius(CornerRadiusToken.xl.style.value)
          
        }
      }
      .navigationTitle("NHS Colors")
      .navigationBarTitleDisplayMode(.large)
    }
  }
  
}

// MARK: - Preview
#Preview {
    NavigationView {
      NHSColorExample()
    }
}
