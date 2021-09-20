<br/>
<p align="center">
    <img src="https://raw.githubusercontent.com/SvenTiigi/YouTubePlayerKit/gh-pages/readme-assets/logo.png?token=ACZQQFS3DO5PMLZUDKA3VT3BKHYS4" width="30%" alt="logo">
</p>


<h1 align="center">YouTubePlayerKit</h1>

<p align="center">
    A Swift Package to easily play YouTube videos on iOS
</p>

<p align="center">
   <a href="https://developer.apple.com/swift/">
      <img src="https://img.shields.io/badge/Swift-5.4-orange.svg?style=flat" alt="Swift 5.4">
   </a>
    <a href="https://sventiigi.github.io/YouTubePlayerKit">
      <img src="https://github.com/SvenTiigi/YouTubePlayerKit/blob/gh-pages/badge.svg" alt="Documentation">
   </a>
   <a href="https://twitter.com/SvenTiigi/">
      <img src="https://img.shields.io/badge/Twitter-@SvenTiigi-blue.svg?style=flat" alt="Twitter">
   </a>
</p>

```swift
import SwiftUI
import YouTubePlayerKit

struct ContentView: View {
    
    var body: some View {
        //  WWDC 2019 Keynote
        YouTubePlayerView(
            "https://www.youtube.com/watch?v=psL_5RIBqnY"
        )
    }
    
}
```

## Features

- [x] Play YouTube videos with just one line of code 📺
- [x] Advanced YouTube iFrame API implementation ✅

## Installation

### Swift Package Manager

To integrate using Apple's [Swift Package Manager](https://swift.org/package-manager/), add the following as a dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/SvenTiigi/YouTubePlayerKit.git", from: "1.0.0")
]
```

Or navigate to your Xcode project then select `Swift Packages`, click the “+” icon and search for `YouTubePlayerKit`.

## Usage

`t.b.d`

## Advanced

`t.b.d`

## License

```
YouTubePlayerKit
Copyright (c) 2021 Sven Tiigi sven.tiigi@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
