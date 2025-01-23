//
//  NSColorExtensions.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 Helper extensions for working with `NSColor` types.
*/

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

// MARK: - Public

public extension NSColor {
    static let label = labelColor
    static let secondaryLabel = secondaryLabelColor
    static let systemBackground = windowBackgroundColor
    static let systemGray6 = unemphasizedSelectedContentBackgroundColor
}
#endif
