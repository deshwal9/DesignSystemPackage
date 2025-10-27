//
//  NHSFontsExample.swift
//  DesignSystem
//
//  Created by Ankit Deshwal on 10/10/2025.
//

import SwiftUI

/// Example usage of NHSFonts system
/// This file demonstrates how to use the NHS font system in your NHS Native App
public struct NHSFontsExample: View {
    
    public init() {}
    
    public var body: some View {
        ScrollView {
          VStack(alignment: .leading, spacing: 20) {
            Group {
              VStack(spacing: 10){
                Text("Subtitle Display Text")
                  .font(Font.system(size: 12))
                  .foregroundColor(.primary)
                
                Text("Title Display Text")
                  .font(Font.system(size: 12, weight: .bold))
                  .foregroundColor(.primary)
                
                Text("Title Display Text")
                  .font(Font.system(size: 12, weight: .bold, design: .rounded))
                  .foregroundColor(.primary)
                
                Text("Hero Display Text")
                  .font(Font.system(.title2))
                  .foregroundColor(.primary)
                
                Text("Hero Display Text")
                  .font(Font.system(.title2, design: .monospaced))
                  .foregroundColor(.primary)
                
                Text("Hero Display Text")
                  .font(Font.system(.title2, design: .monospaced))
                  .foregroundColor(.primary)
              }
              .frame(maxWidth: .infinity)
              .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
              
              // MARK: - Display Styles With NHS Font Style
              VStack(spacing: 10) {
                // Convenience way
                Text("Display Styles")
                  .font(.nhsDisplay)
                  .foregroundColor(.primary)
                
                Text("""
              This is line one.
              This is line two.
              """)
                .font(Font.fromNHS(.display02))
                .foregroundColor(.primary)
              }
              .frame(maxWidth: .infinity)
              .background(Color(#colorLiteral(red: 0.3049563766, green: 0.5311826468, blue: 0.9651253819, alpha: 1)))
            }
          }
        }
        .navigationTitle("NHS Fonts")
        .navigationBarTitleDisplayMode(.large)
    }
}

// MARK: - Preview
#Preview {
    NavigationView {
        NHSFontsExample()
    }
}
