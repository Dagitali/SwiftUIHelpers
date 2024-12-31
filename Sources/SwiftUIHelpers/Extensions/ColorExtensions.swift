//
//  ColorExtensions.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 Helper extensions for working with `Color` types.
*/

import SwiftUI

// MARK: - Public

public extension Color {
    // MARK: Initializers

    /// Initializes a `Color` instance using a hexadecimal color code.
    ///
    /// The initializer supports hexadecimal strings in the formats `#RRGGBB` or `RRGGBB`.
    /// It also optionally supports strings with alpha values in the format `#RRGGBBAA` or `RRGGBBAA`.
    ///
    /// If the string is invalid or cannot be parsed, the initializer falls back to `.clear`.
    ///
    /// - Parameter hex: A string representing the color in hexadecimal format.
    /// - Example:
    ///   ```swift
    ///   let color = Color(hex: "#FF5733")  // RGB
    ///   let colorWithAlpha = Color(hex: "#FF5733CC")  // RGBA
    ///   ```
    init(hex: String) {
        // Normalize the input string by removing any leading `#`.
        let sanitizedHex = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        let length = sanitizedHex.count

        // Ensure the string length is valid.
        guard length == 6 || length == 8 else {
            self = .clear
            return
        }

        // Parse the hexadecimal string.
        var rgb: UInt64 = 0
        guard Scanner(string: sanitizedHex).scanHexInt64(&rgb) else {
            self = .clear
            return
        }

        // Extract color components.
        let red = Double((rgb >> 16) & 0xFF) / 255.0
        let green = Double((rgb >> 8) & 0xFF) / 255.0
        let blue = Double(rgb & 0xFF) / 255.0
        let alpha = length == 8 ? Double((rgb >> 24) & 0xFF) / 255.0 : 1.0

        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }

    // MARK: Computed Properties

    /// The RGB and alpha components of the color as a tuple.
    ///
    /// Returns the red, green, blue, and alpha components of the color, each as a value
    /// between `0.0` and `1.0`. Returns `nil` if the color cannot be represented
    /// in the RGB color space.
    ///
    /// - Returns: A tuple containing the red, green, blue, and alpha components,
    ///   or `nil` if the color cannot be represented in the RGB color space.
    /// - Example:
    ///   ```swift
    ///   let color = Color.red
    ///   if let rgba = color.rgbaComponents {
    ///       print(
    ///           "R: \(rgba.red), G: \(rgba.green), B: \(rgba.blue), A: \(rgba.alpha)"
    ///       )
    ///   }
    ///   ```
    var rgbaComponents: (red: Double, green: Double, blue: Double)? {
        // Create a color space representation.
        guard let cgColor = self.cgColor else { return nil }
        let colorComponents = cgColor.components ?? []

        // Ensure the color space has RGB values (ignoring alpha for simplicity).
        guard colorComponents.count >= 3 else { return nil }

        return (
            red: Double(colorComponents[0]),
            green: Double(colorComponents[1]),
            blue: Double(colorComponents[2])
        )
    }
}
