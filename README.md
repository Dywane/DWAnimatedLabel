# DWAnimatedLabel
An UILabel subclass that lets you animate text with different types, inspired by [RQShineLabel](https://github.com/zipme/RQShineLabel).

![wave](https://raw.githubusercontent.com/Dywane/DWAnimatedLabel/master/Gif/wave.gif)

[中文教程](https://dywane.github.io/使用CADisplayLink实现UILabel动画特效/)

## Features
- Subclass of `UILabel`, easy to use
- Use `CADisplayLink`to perform smooth animation
- Four different animation
- Pure swift

![typewritter](https://raw.githubusercontent.com/Dywane/DWAnimatedLabel/master/Gif/typewriter.gif)

![shine](https://raw.githubusercontent.com/Dywane/DWAnimatedLabel/master/Gif/shine.gif)

![fade](https://raw.githubusercontent.com/Dywane/DWAnimatedLabel/master/Gif/fade.gif)

## Installation

You want to add `pod 'DWAnimatedLabel', '~> 1.1'` similar to the following to your Podfile:

```ruby
target 'MyApp' do
  pod 'DWAnimatedLabel', '~> 1.1'
end
```

Then run a `pod install` inside your terminal, or from CocoaPods.app.

Alternatively to give it a test run, run the command:

`pod try DWAnimatedLabel`

## Usage

You need to import the module fire:

```swift 
import DWAnimatedLabel
```

Then you can create the label just like using UILabel.

```swift
let label = DWAnimatedLabel(frame: CGRect(x: 20, y: 44, width: UIScreen.main.bounds.size.width, height: 100))
label.text = "LOADING"
label.font = UIFont.systemFont(ofSize: 70, weight: .bold)
```

Also you can choose animation type by setting the `animationType` property.

```swift
label.animationType = .wave
```

If you are using `wave` animation, you also need to set the `placeHolderColor` property, otherwise it will be `UIColor.lightGray`.

```swift
label.placeHolderColor = .blue
```

After setting up these properties you can use `startAnimation(duration: TimeInterval, _ completion:(() -> Void)?)` to start perform animation.

## Requirements

- iOS 9.0 +
- Swift 4
- Xcode 9

## Contribution

You are welcome to fork and submit pull requests or issues.

## License

DWAnimatedLabel is open-sourced software lincened under the MIT license.

## Credits

DWAnimatedLabel is owned and maintained by [Dywanedu](https://dywane.github.io)