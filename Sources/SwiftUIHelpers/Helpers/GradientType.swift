//
//  GradientType.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 An enumeration representing the types of gradients available in a theme.
*/

import Foundation

// MARK: - Public

/// An enumeration representing the types of gradients available in a theme.
///
/// Use this enum to specify the gradient style to be applied in your app's UI.
@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public enum GradientType {
    /// A gradient used for primary elements or backgrounds.
    case primary

    /// A gradient used for header sections or titles.
    case header
}
