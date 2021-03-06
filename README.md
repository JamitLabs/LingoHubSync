<p align="center">
    <img src="https://raw.githubusercontent.com/JamitLabs/LingoHubSync/stable/Logo.png"
      width=600 height=167>
</p>

<p align="center">
    <a href="https://github.com/JamitLabs/LingoHubSync/releases">
        <img src="https://img.shields.io/badge/Version-1.0.0-blue.svg"
             alt="Version: 1.0.0">
    </a>
    <img src="https://img.shields.io/badge/Swift-4.0-FFAC45.svg"
         alt="Swift: 4.0">
    <img src="https://img.shields.io/badge/Platforms-iOS%20%7C%20macOS%20%7C%20tvOS-FF69B4.svg"
        alt="Platforms: iOS | macOS | tvOS">
    <a href="https://github.com/JamitLabs/LingoHubSync/blob/stable/LICENSE.md">
        <img src="https://img.shields.io/badge/License-MIT-lightgrey.svg"
              alt="License: MIT">
    </a>
</p>

<p align="center">
    <a href="#installation">Installation</a>
  • <a href="#usage">Usage</a>
  • <a href="https://github.com/JamitLabs/LingoHubSync/issues">Issues</a>
  • <a href="#contributing">Contributing</a>
  • <a href="#license">License</a>
</p>

# LingoHubSync

A client for syncing translation files with LingoHub.

## Installation

### Carthage

Place the following line to your Cartfile:

``` Swift
github "JamitLabs/LingoHubSync" ~> 0.1
```

Now run `carthage update`. Then drag & drop the LingoHubSync.framework in the Carthage/Build folder to your project. Now you can `import LingoHubSync` in each class you want to use its features. Refer to the [Carthage README](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application) for detailed / updated instructions.

### CocoaPods

Add the line `pod 'LingoHubSync'` to your target in your `Podfile` and make sure to include `use_frameworks!`
at the top. The result might look similar to this:

``` Ruby
platform :ios, '8.0'
use_frameworks!

target 'MyAppTarget' do
    pod 'LingoHubSync', '~> 0.1'
end
```

Now close your project and run `pod install` from the command line. Then open the `.xcworkspace` from within your project folder.
Build your project once (with `Cmd+B`) to update the frameworks known to Xcode. Now you can `import LingoHubSync` in each class you want to use its features.
Refer to [CocoaPods.org](https://cocoapods.org) for detailed / updates instructions.

## Usage

Please have a look at the UsageExamples.playground for a complete list of features provided.
Open the Playground from within the `.xcworkspace` in order for it to work.

---
#### Features Overview

- [Short Section](#short-section)
- Sections Group
  - [SubSection1](#subsection1)
  - [SubSection2](#subsection2)

---

### Short Section

TODO: Add some usage information here.

### Sections Group

TODO: Summarize the section here.

#### SubSection1

TODO: Add some usage information here.

#### SubSection2

TODO: Add some usage information here.


## Contributing

Contributions are welcome. Please just open an Issue on GitHub to discuss a point or request a feature or send a Pull Request with your suggestion. Please also try to follow the same syntax and semantic in your **commit messages** (see rationale [here](http://chris.beams.io/posts/git-commit/)).


## License
This library is released under the [MIT License](http://opensource.org/licenses/MIT). See LICENSE for details.
