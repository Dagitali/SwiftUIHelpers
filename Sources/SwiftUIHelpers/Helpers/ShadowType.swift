//
//  ShadowType.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 An enumeration representing the types of shadows available in a theme.
*/

import Foundation

// MARK: - Public

/// An enumeration representing the types of shadows available in a theme.
///
/// Use this enum to specify pre-configured shadow styles for consistent visual hierarchy.
@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public enum ShadowType {
    /// A light shadow, used for subtle depth effects.
    case light

    /// A dark shadow, used for pronounced depth effects.
    case dark

    /// An elevated shadow, used for elements that need strong emphasis.
    case elevated
}
