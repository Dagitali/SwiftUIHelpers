//
//  ColorTheme.swift
//  SwiftUIHelpers
//
//  Copyright © 2025 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 A protocol defining an app's color theme.
*/

import SwiftUI

// MARK: - Public

/// A protocol defining an app's color theme.
///
/// This protocol centralizes color themes for core UI elements, buttons, headers, footers, state indicators, and text highlights.
@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public protocol ColorTheme {
    // MARK: Core Colors

    /// The primary color for the theme.
    var primaryColor: Color { get }

    /// The secondary color for the theme.
    var secondaryColor: Color { get }

    /// The background color for the theme.
    var backgroundColor: Color { get }

    /// The foreground color for the theme.
    var foregroundColor: Color { get }

    /// The accent color for the theme.
    var accentColor: Color { get }

    // MARK: Buttons

    /// The color for primary action buttons.
    var primaryButtonColor: Color { get }

    /// The color for secondary action buttons.
    var secondaryButtonColor: Color { get }

    /// The color for destructive action buttons.
    var destructiveButtonColor: Color { get }

    // MARK: Headers and Footers

    /// The background color for headers.
    var headerBackgroundColor: Color { get }

    /// The foreground color for headers.
    var headerForegroundColor: Color { get }

    /// The background color for footers.
    var footerBackgroundColor: Color { get }

    /// The foregound color for footers.
    var footerForegroundColor: Color { get }

    // MARK: State Indicators

    /// The color for success indicators (e.g., confirmation messages).
    var successColor: Color { get }

    /// The color for warning indicators (e.g., alerts).
    var warningColor: Color { get }

    /// The color for error indicators (e.g., failed validations).
    var errorColor: Color { get }

    // MARK: Text Highlights

    /// The color used to highlight selected text.
    var selectionColor: Color { get }

    /// The color used to indicate focused elements.
    var focusedColor: Color { get }
}

// MARK: - Public (Protocol Defaults)

public extension ColorTheme {
    // MARK: Default Core Colors

    /// The primary button color, defaulting to system blue.
    var primaryColor: Color { Color(.systemBlue) }

    /// The secondary color, defaulting to system green.
    var secondaryColor: Color { Color(.systemGreen) }

    /// The background color, defaulting to the system background color.
    var backgroundColor: Color { Color(.systemBackground) }

    /// The foreground color, defaulting to the system label color.
    var foregroundColor: Color { Color(.label) }

    /// The accent color, defaulting to the system accent color.
    var accentColor: Color { Color.accentColor }

    // MARK: Default Buttons

    /// The primary button color, defaulting to system blue.
    var primaryButtonColor: Color { Color(.systemBlue) }

    /// The secondary button color, defaulting to system gray.
    var secondaryButtonColor: Color { Color(.systemGray) }

    /// The destructive button color, defaulting to system red.
    var destructiveButtonColor: Color { Color(.systemRed) }

    // MARK: Default Headers and Footers

    /// The background color for headers, defaulting to light system gray.
    var headerBackgroundColor: Color { Color(.systemGray6) }

    /// The foreground color for headers, defaulting to the system label color.
    var headerForegroundColor: Color { Color(.label) }

    /// The background color for footers, defaulting to light system gray.
    var footerBackgroundColor: Color { Color(.systemGray6) }

    /// The foreground color for footers, defaulting to the system secondary label color.
    var footerForegroundColor: Color { Color(.secondaryLabel) }

    // MARK: Default State Indicators

    /// The success color, defaulting to system green.
    var successColor: Color { Color(.systemGreen) }

    /// The warning color, defaulting to system yellow.
    var warningColor: Color { Color(.systemYellow) }

    /// The error color, defaulting to system red.
    var errorColor: Color { Color(.systemRed) }

    // MARK: Text Highlights

    /// The selection color, defaulting to a semi-transparent system blue.
    var selectionColor: Color { Color(.systemBlue).opacity(0.2) }

    /// The focus color, defaulting to a more transparent system blue.
    var focusedColor: Color { Color(.systemBlue).opacity(0.1) }
}
