//
//  ThemedButtonStyle.swift
//  SwiftUIHelpers
//
//  Copyright © 2025 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 A button style that conforms to the app's theme for a given button type.
*/

import SwiftUI

// MARK: - Public

/// A button style that conforms to the app's theme for a given button type.
@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public struct ThemedButtonStyle: ButtonStyle {
    let theme: AppTheme
    let type: ButtonType

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(backgroundColor(for: type, isPressed: configuration.isPressed))
            .foregroundColor(theme.foregroundColor)
            .cornerRadius(8)
    }

    private func backgroundColor(for type: ButtonType, isPressed: Bool) -> Color {
        switch type {
        case .primary:
            return isPressed ?
            theme.primaryButtonColor.opacity(0.8) : theme.primaryButtonColor
        case .secondary:
            return isPressed ?
            theme.secondaryButtonColor.opacity(0.8) : theme.secondaryButtonColor
        case .destructive:
            return isPressed ?
            theme.destructiveButtonColor.opacity(0.8) : theme.destructiveButtonColor
        }
    }
}
