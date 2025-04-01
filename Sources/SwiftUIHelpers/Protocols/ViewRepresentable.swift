//
//  ViewRepresentable.swift
//  SwiftUIHelpers
//
//  Copyright © 2025 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 A protocol defining a wrapper for a UIKit or AppKit view that you use to
 integrate that view into your SwiftUI view hierarchy.

 References:
 1. https://gist.github.com/insidegui/97d821ca933c8627e7f614bc1d6b4983
*/

import SwiftUI

// MARK: - Public

/// A protocol defining a wrapper for a `UIKit` or `AppKit` view that you use
/// to integrate that view into your SwiftUI view hierarchy.
///
/// Use this protocol to automate `UIViewRepresentable` conformance on iOS and
/// `NSViewRepresentable` conformance on macOS.
///
/// ## Example
///
/// ```swift
/// struct MyCustomViewRepresentable: ViewRepresentable {
///     typealias PlatformViewType = UIView
///
///     func makePlatformView(context: Context) -> UIView {
///         let view = UIView()
///         // Configure the view as needed
///         return view
///     }
///
///     func updatePlatformView(_ platformView: UIView, context: Context) {
///         // Update view properties based on new state or configuration
///     }
/// }
/// ```
///
/// - Note: The `Context` parameter provided in the methods includes
///   environment values and any custom coordinators that you might use to
///   coordinate data between SwiftUI and the platform view.
@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public protocol ViewRepresentable: PlatformViewRepresentable {
    associatedtype PlatformViewType

    // MARK: View Operations

    /// Creates and returns the platform-specific view instance (such as a
    /// `UIView` on iOS or `NSView` on macOS) that is integrated into the
    /// SwiftUI view hierarchy.
    ///
    /// Implement this method to instantiate and configure the view.  It is
    /// typically called once during the initialization of the SwiftUI view,
    /// and is responsible for setting up the view’s initial state.
    ///
    /// - Parameter context: A context object containing information about the
    ///   current state of the system, including any custom coordinators or
    ///   environment values.
    /// - Returns: A newly created platform-specific view instance.
    func makePlatformView(context: Context) -> PlatformViewType

    /// Updates the provided platform-specific view instance with new
    /// configuration or state from SwiftUI.
    ///
    /// Use this method to synchronize the platform view with SwiftUI state
    /// changes or environment updates.  This
    /// method is called whenever the SwiftUI view updates, ensuring that the
    /// underlying view reflects the latest configuration and data.
    ///
    /// - Parameters:
    ///   - platformView: The platform-specific view (either a `UIView` or
    ///     `NSView`) that needs to be updated.
    ///   - context: A context object containing information about the current
    ///     state of the system, including any custom coordinators or
    ///     environment values.
    func updatePlatformView(_ platformView: PlatformViewType, context: Context)
}

// MARK: - Public (Protocol Defaults)

#if canImport(UIKit)
public extension ViewRepresentable where UIViewType == PlatformViewType {
    /// Creates and returns the UIKit view by calling
    /// `makePlatformView(context:)`.
    ///
    /// - Parameter context: A context object containing environment values and
    ///   coordinators.
    /// - Returns: A newly created `UIView` instance.
    func makeUIView(context: Context) -> UIViewType {
        makePlatformView(context: context)
    }

    /// Updates the UIKit view by delegating to
    /// `updatePlatformView(_:context:)`.
    ///
    /// - Parameters:
    ///   - uiView: The `UIView` instance to update.
    ///   - context: A context object containing environment values and
    ///     coordinators.
    func updateUIView(_ uiView: UIViewType, context: Context) {
        updatePlatformView(uiView, context: context)
    }
}
#elseif canImport(AppKit)
public extension ViewRepresentable where NSViewType == PlatformViewType {
    /// Creates and returns the AppKit view by calling
    /// `makePlatformView(context:)`.
    ///
    /// - Parameter context: A context object containing environment values and
    ///   coordinators.
    /// - Returns: A newly created `NSView` instance.
    func makeNSView(context: Context) -> NSViewType {
        makePlatformView(context: context)
    }

    /// Updates the AppKit view by delegating to
    /// `updatePlatformView(_:context:)`.
    ///
    /// - Parameters:
    ///   - nsView: The `NSView` instance to update.
    ///   - context: A context object containing environment values and
    ///     coordinators.
    func updateNSView(_ nsView: NSViewType, context: Context) {
        updatePlatformView(nsView, context: context)
    }
}
#endif
