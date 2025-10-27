//
//  String+Extension.swift
//  DesignSystem
//
//  Created by Ankit Deshwal on 12/10/2025.
//


import Foundation
import SwiftUI

extension String {
    /// Removes HTML tags from the string.
  public func removingHTMLTags() -> String {
    guard let data = self.data(using: .utf8) else {
      return self
    }
    do {
      // Use NSAttributedString to parse and strip HTML
      let attributedString = try NSAttributedString(
        data: data,
        options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue],
        documentAttributes: nil
      )
      return attributedString.string
    } catch {
      print("Error parsing HTML: \(error)")
      return self
    }
  }
}
