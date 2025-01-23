//
//  GradientConfiguration.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 A structure defining the configuration of a gradient.
*/

import SwiftUI

// MARK: - Public

/// A structure defining the configuration of a gradient.
///
/// This struct centralizes gradient properties, including its colors, start point, and end point. It is designed to
/// provide a reusable and testable representation of gradient configurations in your app.

public struct GradientConfiguration {
    /// The colors used in the gradient, ordered from start to end.
    let colors: [Color]

    /// The starting point of the gradient. Common values include `.top`, `.leading`, and
    /// `.topLeading`.
    let startPoint: UnitPoint

    /// The ending point of the gradient. Common values include `.bottom`, `.trailing`, and
    /// `.bottomTrailing`.
    let endPoint: UnitPoint
}
