//
//  TypeAliases.swift
//  SwiftUIHelpers
//
//  Copyright © 2024 Dagitali LLC. All rights reserved.
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
public typealias PlatformColor = UIColor
public typealias PlatformGesture = UITapGestureRecognizer
public typealias PlatformImage = UIImage
public typealias PlatformView = UIView
#elseif canImport(AppKit)
public typealias PlatformColor = NSColor
public typealias PlatformGesture = NSClickGestureRecognizer
public typealias PlatformImage = NSImage
public typealias PlatformView = NSView
#endif
