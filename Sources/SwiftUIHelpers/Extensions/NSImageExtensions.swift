//
//  NSImageExtensions.swift
//  SwiftUIHelpers
//
//  Copyright © 2025 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 Helper extensions for working with `NSImage` types.
*/

#if canImport(AppKit)
import AppKit

// MARK: - Public

@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
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
