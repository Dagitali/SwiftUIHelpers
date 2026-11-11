//
//  SheetActionLayout.swift
//  SwiftUIHelpers
//
//  Copyright © 2026 Dagitali LLC. All rights reserved.
//
/// Centers a three-position action strip independently of unequal outer control widths.

import SwiftUI

// MARK: - Layouts

/// Places three views in equal lanes with a shared vertical center.
///
/// Each lane measures its actual wrapped content. The outer controls stay at the edges while
/// the middle control stays at the strip's midpoint, including with unequal localized labels.
/// Provide exactly three direct subviews in leading, center, and trailing order.
/// Use an accessibility-hidden, noninteractive placeholder for an unused lane.
/// The layout reports zero size and skips placement when the child count differs.
///
/// Button roles, accessibility labels, and focus or keyboard actions belong to the caller.
public struct SheetActionLayout: Layout {
    private let spacing: CGFloat = 12

    /// Creates a layout with equal leading, center, and trailing lanes.
    public init() {}

    public func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        guard subviews.count == 3 else { return .zero }
        let ideal =
            (subviews.map { $0.sizeThatFits(.unspecified).width }.max() ?? 44) * 3 + spacing * 2
        let width = proposal.width.flatMap { $0.isFinite ? $0 : nil } ?? ideal
        let lane = laneWidth(in: width)
        let height =
            subviews.map { $0.sizeThatFits(ProposedViewSize(width: lane, height: nil)).height }
            .max() ?? 44
        return CGSize(width: max(0, width), height: height)
    }

    public func placeSubviews(
        in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()
    ) {
        guard subviews.count == 3 else { return }
        let lane = laneWidth(in: bounds.width)
        let positions: [(CGFloat, UnitPoint)] = [
            (bounds.minX, .leading), (bounds.midX, .center), (bounds.maxX, .trailing)
        ]
        for (index, position) in positions.enumerated() {
            subviews[index].place(
                at: CGPoint(x: position.0, y: bounds.midY), anchor: position.1,
                proposal: ProposedViewSize(width: lane, height: bounds.height))
        }
    }

    /// Keeps sizing and placement consistent when the available width is narrower than the gaps.
    func laneWidth(in width: CGFloat) -> CGFloat {
        max(0, (width - spacing * 2) / 3)
    }
}
