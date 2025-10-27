//
//  NHSIcons+new.swift
//  DesignSystem
//
//  Created by Ankit Deshwal on 22/10/2025.
//

import SwiftUI

public protocol NHSIconType {
    var image: Image { get }
}
public extension NHSIconType {
    var templateImage: Image {
        image.renderingMode(.template)
    }
}

public struct AssetIcon: NHSIconType {
    public let name: String

    public init(_ name: String) {
        self.name = name
    }

    public var image: Image {
        Image(name, bundle: .module)
    }
}

public struct SystemIcon: NHSIconType {
    public let symbolName: String

    public init(_ symbolName: String) {
        self.symbolName = symbolName
    }

    public var image: Image {
        Image(systemName: symbolName)
    }
}

