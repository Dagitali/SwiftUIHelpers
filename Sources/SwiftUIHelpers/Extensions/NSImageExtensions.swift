//
//  NSImageExtensions.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 Helper extensions for working with `NSImage` types.
*/

#if canImport(AppKit)
import AppKit

// MARK: - Public

public extension NSImage {
    /// Converts an `NSImage` to a `CGImage`.
    ///
    /// This property provides a convenient way to access the `CGImage` representation
    /// of an `NSImage`. The conversion uses the image's proposed rectangle, current
    /// graphics context, and any associated hints.
    ///
    /// - Returns: A `CGImage` representation of the `NSImage`, or `nil` if the conversion fails.
    var cgImage: CGImage? {
        var rect = CGRect(origin: .zero, size: size)

        return cgImage(forProposedRect: &rect, context: nil, hints: nil)
    }
}
#endif
