//
//  DesignSystemTests.swift
//  NHS_NativeApp
//
//  Created by Ankit Deshwal on 10/10/2025.
//

import XCTest
@testable import DesignSystem
import SwiftUI

final class DesignSystemTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
      
      let regularFontSized10 = Font.fromFDS(.regular, size: 10)
      XCTAssertNotNil(regularFontSized10)
    }
}
