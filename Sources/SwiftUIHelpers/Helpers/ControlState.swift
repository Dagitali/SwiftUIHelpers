//
//  ControlState.swift
//  SwiftUIHelpers
//
//  Copyright © 2025 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 An enumeration representing the possible states of a control.
*/

import Foundation

// MARK: - Public

/// An enumeration representing the possible states of a control.
///
/// Use this enum to define the visual state of UI elements like buttons or toggles.
@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public enum ControlState {
    /// The default, enabled state of a control.
    case normal

    /// A disabled state, indicating the control is not interactive.
    case disabled

    /// A selected state, indicating the control is actively selected.
    case selected

    /// A highlighted state, often used to indicate user interaction, such as a press.
    case highlighted
}
