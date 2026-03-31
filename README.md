# SwiftUI macOS 阴影与圆角

## 简介

演示 SwiftUI 中阴影（`.shadow`）和圆角（`.cornerRadius`）的用法。

## 快速开始

```bash
cd swiftui-macos-shadow-radius-demo
xcodegen generate
open SwiftUIShadowRadiusDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### cornerRadius 圆角

```swift
RoundedRectangle(cornerRadius: 8)
    .fill(Color.blue)
    .frame(width: 60, height: 60)
```

### shadow 阴影

```swift
Rectangle()
    .shadow(color: .black.opacity(0.2), radius: 5, x: 2, y: 2)
```

参数：
- `color`: 阴影颜色
- `radius`: 模糊半径
- `x`, `y`: 阴影偏移

### clipShape 裁剪形状

```swift
Circle()      // 圆形
Capsule()    // 胶囊形
Ellipse()    // 椭圆形
```

## 完整示例

```swift
Card()
    .background(Color.white)
    .cornerRadius(12)
    .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 4)
```
