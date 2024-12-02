//
//  ControlState.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 An enumeration representing the possible states of a control.
*/

import Foundation

// MARK: - Public

/// An enumeration representing the possible states of a control.
///
/// Use this enum to define the visual state of UI elements like buttons or toggles.
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
