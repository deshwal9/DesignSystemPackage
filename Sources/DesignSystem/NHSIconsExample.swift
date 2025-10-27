//
//  NHSIconsExample.swift
//  DesignSystem
//
//  Created by Ankit Deshwal on 22/10/2025.
//

import SwiftUI

/// Example usage of NHSFonts system
/// This file demonstrates how to use the NHS font system in your NHS Native App
public struct NHSIconsExample: View {
  public init() {}
  
  public var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 20) {
        Image(systemName: "person.crop.circle")
          .font(.system(size: 40, weight: .bold))
          .foregroundColor(.blue)
        
        //MARK: Way of set NHS icon type
        Image
          .nhsIcon(.ibmLogo)
          .padding(10)
          .background(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
         
        Image
          .nhsIcon(.profile)
          .padding(10)
          .background(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
      }
      .navigationTitle("NHS Icons")
      .navigationBarTitleDisplayMode(.large)
    }
  }
  
}

// MARK: - Preview
#Preview {
    NavigationView {
      NHSIconsExample()
    }
}
