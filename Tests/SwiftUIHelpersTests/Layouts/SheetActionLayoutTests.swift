//
//  SheetActionLayoutTests.swift
//  SwiftUIHelpers
//
//  Copyright © 2026 Dagitali LLC. All rights reserved.
//
/// Tests the lane widths shared by action measurement and placement.

import SwiftUI
import Testing
@testable import SwiftUIHelpers

// MARK: - Tests

/// Covers ordinary and constrained proposals for the shared three-lane layout.
@MainActor struct SheetActionLayoutTests {
    @Test(arguments: [0, 12, 24, 27, 156, 300])
    func keepsLanesEqualAndNonnegative(width: Int) {
        let expected: [Int: CGFloat] = [0: 0, 12: 0, 24: 0, 27: 1, 156: 44, 300: 92]
        #expect(SheetActionLayout().laneWidth(in: CGFloat(width)) == expected[width])
    }
}
