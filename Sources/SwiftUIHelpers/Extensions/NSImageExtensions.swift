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
#if targetEnvironment(macCatalyst)
import UIKit
#endif

// MARK: - Public

@available(macCatalyst 15.0, macOS 15.0, *)
public extension NSImage {
    /// Converts an `NSImage` to a `CGImage`.
    ///
    /// This property provides a convenient way to access the `CGImage`
    /// representation of an `NSImage`.  On macOS, the conversion uses the
    /// standard API (i.e., the image's proposed rectangle, current graphics
    ///  context, and any associated hints).  On Mac Catalyst (or if the
    ///  primary conversion fails), it retrieves the underlying `UIImage`
    ///  representation via key-value coding.
    ///
    /// - Returns: The `CGImage` representation of the `NSImage`, or `nil` if
    ///   the conversion fails.
    var cgImage: CGImage? {
#if targetEnvironment(macCatalyst)
        // On Mac Catalyst, NSImage is implemented as a thin wrapper around
        // UIImage. Since direct casts or standard conversions are unavailable,
        // we use key-value coding to attempt to retrieve the underlying
        // UIImage.
        if let uiImage = value(forKey: "image") as? UIImage {
            return uiImage.cgImage
        }

        return nil
#else
        let imageSize = self.size
        var rect = CGRect(origin: .zero, size: imageSize)

        // Try the standard conversion method.
        if let image = cgImage(forProposedRect: &rect, context: nil, hints: nil) {
            return image
        }

        // Fallback: try converting via the TIFF representation.
        guard let tiffData = tiffRepresentation,
              let bitmapRep = NSBitmapImageRep(data: tiffData) else {
            return nil
        }

        return bitmapRep.cgImage
#endif
    }
}
#endif
