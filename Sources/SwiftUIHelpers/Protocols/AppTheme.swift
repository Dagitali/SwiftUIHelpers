//
//  AppTheme.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 A protocol defining an app's theme.
*/

import SwiftUI

// MARK: - Public

/// A protocol defining an app's theme.
///
/// Use this protocol to centralize theming elements like fonts, colors, gradients, and shadows.
/// You can define custom themes by conforming to this protocol.
@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public protocol AppTheme: ColorTheme, FontTheme {
    // MARK: Gradients

    /// Returns a gradient based on the specified type.
    ///
    /// - Parameter type: The type of gradient to retrieve.
    /// - Returns: A `GradientConfiguration` configured for the theme.
    func gradient(forType type: GradientType) -> GradientConfiguration

    // MARK: Shadows

    /// Returns a shadow configuration based on the specified type.
    ///
    /// - Parameter type: The type of shadow to retrieve.
    /// - Returns: A `ShadowConfiguration` with the appropriate properties.
    func shadow(forType type: ShadowType) -> ShadowConfiguration
}

// MARK: - Public (Protocol Defaults)

public extension AppTheme {

    // MARK: Default Gradients

    func gradient(forType type: GradientType) -> GradientConfiguration {
        switch type {
        case .primary:
            return GradientConfiguration(
                colors: [primaryColor, secondaryColor],
                startPoint: .top,
                endPoint: .bottom
            )
        case .header:
            return GradientConfiguration(
                colors: [headerBackgroundColor, primaryColor],
                startPoint: .leading,
                endPoint: .trailing
            )
        }
    }

    // MARK: Default Shadows

    func shadow(forType type: ShadowType) -> ShadowConfiguration {
        switch type {
        case .light:
            return ShadowConfiguration(
                color: Color.black.opacity(0.1),
                radius: 2,
                x: 0,
                y: 2
            )
        case .dark:
            return ShadowConfiguration(
                color: Color.black.opacity(0.5),
                radius: 4,
                x: 0,
                y: 4
            )
        case .elevated:
            return ShadowConfiguration(
                color: Color.black.opacity(0.2),
                radius: 6,
                x: 0,
                y: 6
            )
        }
    }
}
