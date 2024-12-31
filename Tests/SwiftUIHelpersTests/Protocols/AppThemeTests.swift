//
//  AppThemeTests.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 A test suite to validate the functionality of `AppTheme`.
*/

import SwiftUI
import Testing
@testable import SwiftUIHelpers

/*
@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
}
*/

/// Define a default theme for testing purposes.
struct DefaultAppTheme: AppTheme {}

/// A test suite to validate the functionality of `AppTheme`.
// @Suite("AppTheme Tests", arguments: [DefaultAppTheme])
@Suite("AppTheme Tests")
struct AppThemeTests {
    let theme = DefaultAppTheme()

    // MARK: Color Tests

    /// Test for verifying core colors.
    @Test
    func testCoreColors() {
        #expect(
            theme.primaryColor == Color(.systemBlue),
            "Primary color does not match expected value."
        )
        #expect(
            theme.secondaryColor == Color(.systemGreen),
            "Secondary color does not match expected value."
        )
#if os(iOS) || os(tvOS) || os(visionOS)
        #expect(
            theme.backgroundColor == Color(.systemBackground),
            "Background color does not match expected value."
        )
        #expect(
            theme.foregroundColor == Color(.label),
            "Foreground color does not match expected value."
        )
#elseif os(macOS)
        #expect(
            theme.backgroundColor == Color(.windowBackgroundColor),
            "Background color does not match expected value."
        )
        #expect(
            theme.foregroundColor == Color(.labelColor),
            "Foreground color does not match expected value."
        )
#endif
        #expect(
            theme.accentColor == Color.accentColor,
            "Accent color does not match expected value."
        )
    }

    /// Test for verifying state indicator colors.
    @Test
    func testStateIndicatorColors() {
        #expect(
            theme.successColor == Color(.systemGreen),
            "Success color does not match expected value."
        )
        #expect(
            theme.warningColor == Color(.systemYellow),
            "Warning color does not match expected value."
        )
        #expect(
            theme.errorColor == Color(.systemRed),
            "Error color does not match expected value."
        )
    }

    /// Test for verifying text highlight colors.
    @Test
    func testTextHighlightColors() {
        #expect(
            theme.selectionColor == Color(.systemBlue).opacity(0.2),
            "Selection color does not match expected value."
        )
        #expect(
            theme.focusedColor == Color(.systemBlue).opacity(0.1),
            "Focused color does not match expected value."
        )
    }

    // MARK: - Font Tests

    /// Test for verifying default fonts.
    @Test
    func testFonts() {
        #expect(
            theme.largeTitleFont == .largeTitle,
            "Large title font does not match expected value."
        )
        #expect(
            theme.titleFont == .title,
            "Title font does not match expected value."
        )
        #expect(
            theme.headlineFont == .headline,
            "Headline font does not match expected value."
        )
        #expect(
            theme.bodyFont == .body,
            "Body font does not match expected value."
        )
        #expect(
            theme.calloutFont == .callout,
            "Callout font does not match expected value."
        )
        #expect(
            theme.footnoteFont == .footnote,
            "Footnote font does not match expected value."
        )
        #expect(
            theme.captionFont == .caption,
            "Caption font does not match expected value."
        )
    }

    // MARK: Gradient Tests

    /// Test for verifying the primary gradient configuration.
    @Test
    func testPrimaryGradientLogic() {
        let config = theme.gradient(forType: .primary)

        // Verify the gradient configuration.
        #expect(
            config.colors == [theme.primaryColor, theme.secondaryColor],
            "Primary gradient colors do not match expected values."
        )
        #expect(
            config.startPoint == .top,
            "Primary gradient start point does not match expected value."
        )
        #expect(
            config.endPoint == .bottom,
            "Primary gradient end point does not match expected value."
        )
    }

    /// Test for verifying the primary gradient configuration.
    @Test
    func testHeaderGradientLogic() {
        let config = theme.gradient(forType: .header)

        // Verify the gradient configuration.
        #expect(
            config.colors == [theme.headerBackgroundColor, theme.primaryColor],
            "Header gradient colors do not match expected values."
        )
        #expect(
            config.startPoint == .leading,
            "Header gradient start point does not match expected value."
        )
        #expect(
            config.endPoint == .trailing,
            "Header gradient end point does not match expected value."
        )
    }

    // MARK: Shadow Tests

    /// Test for verifying the light shadow configuration.
    @Test
    func testLightShadowConfiguration() {
        let shadow = theme.shadow(forType: .light)
        #expect(
            shadow.color == Color.black.opacity(0.1),
            "Light shadow color does not match expected value."
        )
        #expect(
            shadow.radius == 2,
            "Light shadow radius does not match expected value."
        )
        #expect(
            shadow.x == 0,
            "Light shadow x-offset does not match expected value."
        )
        #expect(
            shadow.y == 2,
            "Light shadow y-offset does not match expected value."
        )
    }

    /// Test for verifying the dark shadow configuration.
    @Test
    func testDarkShadowConfiguration() {
        let shadow = theme.shadow(forType: .dark)
        #expect(
            shadow.color == Color.black.opacity(0.5),
            "Dark shadow color does not match expected value."
        )
        #expect(
            shadow.radius == 4,
            "Dark shadow radius does not match expected value."
        )
        #expect(
            shadow.x == 0,
            "Dark shadow x-offset does not match expected value."
        )
        #expect(
            shadow.y == 4,
            "Dark shadow y-offset does not match expected value."
        )
    }

    /// Test for verifying the elevated shadow configuration.
    @Test
    func testElevatedShadowConfiguration() {
        let shadow = theme.shadow(forType: .elevated)
        #expect(
            shadow.color == Color.black.opacity(0.2),
            "Elevated shadow color does not match expected value."
        )
        #expect(
            shadow.radius == 6,
            "Elevated shadow radius does not match expected value."
        )
        #expect(
            shadow.x == 0,
            "Elevated shadow x-offset does not match expected value."
        )
        #expect(
            shadow.y == 6,
            "Elevated shadow y-offset does not match expected value."
        )
    }
}
