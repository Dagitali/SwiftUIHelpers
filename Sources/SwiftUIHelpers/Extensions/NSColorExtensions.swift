//
//  NSColorExtensions.swift
//  SwiftUIHelpers
//
//  Copyright © 2025 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 Helper extensions for working with the `NSColor` type.
*/

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

// MARK: - Public

@available(macCatalyst 18.0, macOS 15.0, *)
public extension NSColor {
    static let label = labelColor
    static let secondaryLabel = secondaryLabelColor
    static let systemBackground = windowBackgroundColor
    static let systemGray6 = unemphasizedSelectedContentBackgroundColor
}
#endif
