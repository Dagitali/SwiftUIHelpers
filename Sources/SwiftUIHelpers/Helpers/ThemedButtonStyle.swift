//
//  ThemedButtonStyle.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 A button style that conforms to the app's theme for a given button type.
*/

import SwiftUI

// MARK: - Public

/// A button style that conforms to the app's theme for a given button type.
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
