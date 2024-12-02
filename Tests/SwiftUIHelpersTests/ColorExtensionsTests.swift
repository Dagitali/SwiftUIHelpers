//
//  ColorExtensionsTests.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 A test suite to validate the functionality of `Color` extensions.
*/

import SwiftUI
import Testing
@testable import SwiftUIHelpers

/*
@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
}
 */

// MARK: - Test Suites

/// A test suite to validate the functionality of `Color` extensions.
@Suite("Color Extensions Tests")
struct ColorExtensionsTests {
    // MARK: Tests (Initializers)

    /// Test for verifying core colors.
    @Test
    func testInit() {
        // Given
        let hexColor = "#FF5733"
        let expectedRed: Double = 1.0
        let expectedGreen: Double = 0.34
        let expectedBlue: Double = 0.2

        // When
        let color = Color(hex: hexColor)

        // Then
        let components = color.rgbaComponents
        #expect(abs((components?.red ?? 0) - expectedRed) < 0.01)
        #expect(abs((components?.green ?? 0) - expectedGreen) < 0.01)
        #expect(abs((components?.blue ?? 0) - expectedBlue) < 0.01)
    }
}
