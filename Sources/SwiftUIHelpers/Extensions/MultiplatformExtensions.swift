//
//  MultiplatformExtensions.swift
//  SwiftUIHelpers
//
//  Copyright © 2025 Dagitali LLC. All rights reserved.
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

@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public extension PlatformImage {
    var imageData: Data? {
#if canImport(UIKit)
        pngData()
#elseif canImport(AppKit)
        tiffRepresentation
#endif
    }
}
