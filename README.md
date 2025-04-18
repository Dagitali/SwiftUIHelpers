# SwiftUIHelpers

![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/Dagitali/SwiftUIHelpers?sort=semver)
![Build Status](https://github.com/Dagitali/SwiftUIHelpers/actions/workflows/lint.yml/badge.svg)
![Build Status](https://github.com/Dagitali/SwiftUIHelpers/actions/workflows/test.yml/badge.svg)
![Build Status](https://github.com/Dagitali/SwiftUIHelpers/actions/workflows/release.yml/badge.svg)
![Build Status](https://github.com/Dagitali/SwiftUIHelpers/actions/workflows/document.yml/badge.svg)
![Build Status](https://github.com/Dagitali/SwiftUIHelpers/actions/workflows/publish.yml/badge.svg)
![Codecov](https://codecov.io/gh/Dagitali/SwiftUIHelpers/branch/main/graph/badge.svg)
![GitHub](https://img.shields.io/github/license/Dagitali/SwiftUIHelpers)
![GitHub issues](https://img.shields.io/github/issues/Dagitali/SwiftUIHelpers)
![GitHub pull requests](https://img.shields.io/github/issues-pr/Dagitali/SwiftUIHelpers)
![GitHub top language](https://img.shields.io/github/languages/top/Dagitali/SwiftUIHelpers)
![GitHub repo size](https://img.shields.io/github/repo-size/Dagitali/SwiftUIHelpers)
![GitHub contributors](https://img.shields.io/github/contributors/Dagitali/SwiftUIHelpers)

A Swift package that includes an integrated collection of SwiftUI extensions and related custom
abstractions.

- [SwiftUIHelpers](#swiftuihelpers)
  - [Overview](#overview)
  - [Features](#features)
    - [Extensions](#extensions)
    - [Custom Protocols](#custom-protocols)
    - [Utilities](#utilities)
  - [Installation](#installation)
    - [Using Swift Package Manager (SPM)](#using-swift-package-manager-spm)
  - [Testing](#testing)
  - [Documentation](#documentation)
    - [Community Health](#community-health)
    - [Project](#project)
  - [Contributing](#contributing)
  - [License](#license)
  - [Acknowledgments](#acknowledgments)

## Overview

SwiftUIHelpers is a Swift package designed to complement SwiftUI, Apple’s native framework for
building user interfaces.  While SwiftUI provides a powerful declarative syntax for constructing and
customizing app UIs, SwiftUIHelpers builds upon this foundation with additional utilities and
abstractions to handle recurring tasks and enhance developer productivity.

This package focuses on providing practical, reusable extensions and abstractions that:

- Simplify common patterns in SwiftUI.
- Standardize customizations like gradients, shadows, and colors.
- Extend SwiftUI’s capabilities without overriding or replacing its native functionality.

By integrating SwiftUIHelpers into your project, you can reduce boilerplate code, improve
readability, and adopt reusable patterns tailored for modern SwiftUI apps.

## Features

### Extensions

Enhance native SwiftUI, UIKit, and AppKit types with powerful, reusable extensions:

- `Color`
- `Image`
- `NSColor`
- `NSImage`
- `UIImage`

### Custom Protocols

Formalize common patterns by conforming UI-related types (e.g., themes) to new
protocols:

- `AppTheme`
- `ColorTheme`
- `FontTheme`
- `ViewRepresentable`

### Utilities

Streamline ceremony / boilerplate with flexible, reusable types and type aliases:

- `ButtonType`
- `ControlState`
- `GradientConfiguration`
- `GradientType`
- `ShadowConfiguration`
- `ShadowType`
- `ThemedButtonStyle`

## Installation

### Using Swift Package Manager (SPM)

To integrate SwiftUIHelpers into your project:

1. Open your project in **Xcode**.
2. Navigate to **File > Add Packages**.
3. Enter the URL for this repository:

   <https://github.com/Dagitali/SwiftUIHelpers>

4. Select the latest version and add it to your target.

## Testing

The package includes a comprehensive test suite to ensure reliability.  Run tests with:

```bash
swift test
```

## Documentation

For detailed API documentation and more usage examples, visit the [SwiftUIHelpers][docs]
documentation site.  For project documentation, refer to the files listed in the subsections that
follow.

### Community Health

- [Code of Conduct](CODE_OF_CONDUCT.md)
- [Contributing](CONTRIBUTING.md)

### Project

- [References](REFERENCES.md)

## Contributing

Contributions are welcome!  If you’d like to add a new feature, fix a bug, or improve the
documentation:

1. Fork this repository.
2. Create a new feature branch for your changes (`git checkout -b feature/feature-name`).
3. Commit your changes (`git commit -m "Add feature"`).
4. Push to your branch (`git push origin feature-name`).
5. Submit a pull request with a detailed description.

## License

SwiftUIHelpers is available under the [MIT License](LICENSE).

## Acknowledgments

SwiftUIHelpers is inspired by common patterns in Swift development and its declarative UI paradigm,
aiming to reduce boilerplate code and increase productivity.  Feedback and contributions are always
appreciated!

Special thanks to the SwiftUI community for fostering creativity and collaboration.

[docs]: https://dagitali.github.io/SwiftUIHelpers/documentation/swiftuihelpers/
