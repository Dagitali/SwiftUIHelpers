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
 1. https://www.hackingwithswift.com/example-code/language/how-to-check-whether-a-module-is-available-using-canimport
*/

#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

// MARK: - Public

#if canImport(UIKit)
@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public typealias PlatformColor = UIColor
public typealias PlatformGesture = UITapGestureRecognizer
public typealias PlatformImage = UIImage
public typealias PlatformView = UIView
#elseif canImport(AppKit)
@available(iOS 18.0, macOS 15.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
public typealias PlatformColor = NSColor
public typealias PlatformGesture = NSClickGestureRecognizer
public typealias PlatformImage = NSImage
public typealias PlatformView = NSView
#endif
