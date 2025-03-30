//
//  ShadowTypes.swift
//  SwiftUIHelpers
//
//  Copyright © 2025 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 A structure defining the configuration of a shadow.
*/

import SwiftUI

// MARK: - Public

/// A structure defining the configuration of a shadow.
///
/// This struct centralizes shadow properties, including its color, blur radius, and horizontal and vertical
/// offsets, for consistent theming across the app.
@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public struct ShadowConfiguration {
    /// The color of the shadow.
    public let color: Color

    /// The blur radius of the shadow.
    public let radius: CGFloat

    /// The horizontal offset of the shadow.
    public let x: CGFloat

    /// The vertical offset of the shadow.
    public let y: CGFloat
}
