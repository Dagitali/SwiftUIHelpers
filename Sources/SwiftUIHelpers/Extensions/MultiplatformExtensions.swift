//
//  MultiplatformExtensions.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 Helper extensions for simplifying multiplatform development.
*/

#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

// MARK: - Public

public extension PlatformImage {
    var imageData: Data? {
#if canImport(UIKit)
        pngData()
#elseif canImport(AppKit)
        tiffRepresentation
#endif
    }
}
