# AFNullSafe

[![CI Status](https://img.shields.io/travis/MAF/AFNullSafe.svg?style=flat)](https://travis-ci.org/MAF/AFNullSafe)
[![Version](https://img.shields.io/cocoapods/v/AFNullSafe.svg?style=flat)](https://cocoapods.org/pods/AFNullSafe)
[![License](https://img.shields.io/cocoapods/l/AFNullSafe.svg?style=flat)](https://cocoapods.org/pods/AFNullSafe)
[![Platform](https://img.shields.io/cocoapods/p/AFNullSafe.svg?style=flat)](https://cocoapods.org/pods/AFNullSafe)

防止解析服务器数据获取到NULL，对NULL对象调用其他类（NSString 、NSArray等）的方法时崩溃。

原理：只要在`NULL`找不到方法实现的时候向能响应这个方法的对象进行转发。

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

AFNullSafe is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AFNullSafe'
```

## Author

MAF, developer_fly@sina.com

## License

AFNullSafe is available under the MIT license. See the LICENSE file for more info.
