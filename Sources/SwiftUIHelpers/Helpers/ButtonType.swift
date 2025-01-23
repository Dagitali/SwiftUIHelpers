//
//  ButtonType.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 An enumeration representing different types of buttons.
*/

import Foundation

// MARK: - Public

/// An enumeration representing different types of buttons.
///
/// Use this enum to define the style or purpose of a button, such as primary actions, secondary actions, or
/// destructive actions.
public enum ButtonType {
    /// A primary button, typically used for the main action.
    case primary

    /// A secondary button, used for less prominent actions.
    case secondary

    /// A destructive button, used for actions that result in deletion or irreversible changes.
    case destructive
}
