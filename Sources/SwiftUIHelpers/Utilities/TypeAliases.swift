//
//  TypeAliases.swift
//  SwiftUIHelpers
//
//  Copyright © 2025 Dagitali LLC. All rights reserved.
//

/*
 See the LICENSE.txt file for this package’s licensing information.

 Abstract:
 Typealiases that simplify multiplatform development.

 References:
 1. https://gist.github.com/insidegui/97d821ca933c8627e7f614bc1d6b4983
 2. https://www.hackingwithswift.com/example-code/language/how-to-check-whether-a-module-is-available-using-canimport
*/

import SwiftUI

#if canImport(UIKit)
import UIKit
#if canImport(WatchKit)
import WatchKit
#endif
#elseif canImport(AppKit)
import AppKit
#endif

// MARK: - Public

#if canImport(UIKit)

@available(iOS 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public typealias PlatformApplication = UIApplication

@available(iOS 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public typealias PlatformColor = UIColor

#if !os(watchOS)
@available(iOS 18.0, tvOS 18.0, visionOS 2.0, *)
public typealias PlatformGesture = UITapGestureRecognizer
#endif

@available(iOS 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public typealias PlatformImage = UIImage

#if !os(watchOS)

@available(iOS 18.0, tvOS 18.0, visionOS 2.0, *)
public typealias PlatformView = UIView

@available(iOS 18.0, tvOS 18.0, visionOS 2.0, *)
public typealias PlatformViewRepresentable = UIViewRepresentable

#else

@available(watchOS 11.0, *)
public typealias PlatformView = WKInterfaceObject

@available(watchOS 11.0, *)
public typealias PlatformViewRepresentable = WKInterfaceObject

#endif

#elseif canImport(AppKit)

import AppKit

@available(macCatalyst 18.0, macOS 15.0, *)
public typealias PlatformApplication = NSApplication

@available(macCatalyst 18.0, macOS 15.0, *)
public typealias PlatformColor = NSColor

@available(macCatalyst 18.0, macOS 15.0, *)
public typealias PlatformGesture = NSClickGestureRecognizer

@available(macCatalyst 18.0, macOS 15.0, *)
public typealias PlatformImage = NSImage

@available(macCatalyst 18.0, macOS 15.0, *)
public typealias PlatformView = NSView

@available(macCatalyst 18.0, macOS 15.0, *)
public typealias PlatformViewRepresentable = NSViewRepresentable

#endif
