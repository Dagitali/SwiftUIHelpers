//
//  FontTheme.swift
//  SwiftUIHelpers
//
//  Copyright © 2025 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 A protocol for theming an app's fonts.
*/

import SwiftUI

// MARK: - Public

/// A protocol for theming an app's fonts.
///
/// This protocol centralizes font themes for various text styles in your app.
@available(iOS 18.0, macCatalyst 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public protocol FontTheme {
    // MARK: Text Styles

    /// The font for large titles (e.g., main headings).
    var largeTitleFont: Font { get }

    /// The font for titles (e.g., primary sections or navigation elements).
    var titleFont: Font { get }

    /// The font for headlines (e.g., secondary headings).
    var headlineFont: Font { get }

    /// The font for body text (e.g., main content).
    var bodyFont: Font { get }

    /// The font for callouts (e.g., highlighted or call-to-action text).
    var calloutFont: Font { get }

    /// The font for footnotes (e.g., less prominent details).
    var footnoteFont: Font { get }

    /// The font for captions (e.g., small, explanatory text).
    var captionFont: Font { get }
}

// MARK: - Public (Protocol Defaults)

public extension FontTheme {
    // MARK: Default Text Styles

    /// The default font for large titles.
    var largeTitleFont: Font { .largeTitle }

    /// The default font for titles.
    var titleFont: Font { .title }

    /// The default font for headlines.
    var headlineFont: Font { .headline }

    /// The default font for body text.
    var bodyFont: Font { .body }

    /// The default font for callouts.
    var calloutFont: Font { .callout }

    /// The default font for footnotes.
    var footnoteFont: Font { .footnote }

    /// The default font for captions.
    var captionFont: Font { .caption }
}
