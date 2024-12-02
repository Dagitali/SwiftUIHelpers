//
//  MultlatformExtensions.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 Helper extensions that simplify multiplatform development.
*/

import Foundation

// MARK: - Public

#if os(macOS)
import AppKit
public typealias PlatformImage = NSImage

public extension NSImage {
    var cgImage: CGImage? {
        var rect = CGRect(origin: .zero, size: size)
        return cgImage(forProposedRect: &rect, context: nil, hints: nil)
    }
}
#else
import UIKit
public typealias PlatformImage = UIImage
#endif

public extension PlatformImage {
    var imageData: Data? {
        #if os(macOS)
        tiffRepresentation
        #else
        pngData()
        #endif
    }
}
