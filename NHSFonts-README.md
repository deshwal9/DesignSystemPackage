# NHS Fonts System

A comprehensive typography system for NHS Native App, similar to FDSFont but tailored for NHS branding and accessibility requirements.

## Overview

The NHS Fonts system provides a complete typography solution that:
- Follows NHS brand guidelines
- Ensures accessibility compliance (WCAG AA)
- Uses system fonts for optimal performance
- Provides consistent typography across the app
- Supports medical-specific content

## Architecture

The NHS Fonts system consists of several components:

### Core Components

1. **NHSFont** - Enum defining available font types
2. **NHSWeight** - Enum defining font weights
3. **NHSFontStyle** - Enum defining typography styles
4. **NHSFonts** - Main class providing easy access to fonts
5. **Font+NHS** - Extensions for SwiftUI Font creation

### Font Families

- **Display** - For large headlines and titles
- **Text** - For body text and content
- **Medical** - For medical records and prescriptions
- **Accessible** - For accessibility compliance

## Usage

### Basic Usage

```swift
import SwiftUI
import DesignSystem

struct MyView: View {
    var body: some View {
        VStack {
            Text("Hero Title")
                .font(NHSFonts.hero)
            
            Text("Section Heading")
                .font(NHSFonts.heading)
            
            Text("Body content goes here")
                .font(NHSFonts.body)
            
            Text("Small caption text")
                .font(NHSFonts.caption)
        }
    }
}
```

### Using Specific Styles

```swift
Text("Display Text")
    .font(NHSFonts.font(.display01))

Text("Medical Records")
    .font(NHSFonts.medical)

Text("Accessible Text")
    .font(NHSFonts.accessible)
```

### Custom Font Sizes and Weights

```swift
Text("Custom Size")
    .font(NHSFonts.font(size: .large, weight: .bold))

Text("Accessible Size")
    .font(NHSFonts.accessibleFont(size: .medium, weight: .regular))

Text("Medical Font")
    .font(NHSFonts.medicalFont(size: .regular, weight: .medium))
```

### Button Fonts

```swift
Button("Primary Action") {
    // Action
}
.font(NHSFonts.button)
.padding()
.background(Color.blue)
.foregroundColor(.white)
.cornerRadius(8)
```

## Available Font Styles

### Display Styles
- `.display01` - Hero display (48pt)
- `.display02` - Title display (36pt)
- `.display03` - Subtitle display (28pt)

### Heading Styles
- `.heading01` - H1 (24pt)
- `.heading02` - H2 (20pt)
- `.heading03` - H3 (18pt)
- `.heading04` - H4 (16pt)
- `.heading05` - H5 (14pt)
- `.heading06` - H6 (12pt)

### Body Styles
- `.body01` - Large body (16pt)
- `.body02` - Regular body (14pt)
- `.body03` - Small body (12pt)
- `.body04` - Compact body (14pt, light)

### Caption Styles
- `.caption01` - Regular caption (14pt)
- `.caption02` - Small caption (12pt)
- `.caption03` - Micro caption (10pt)

### Label Styles
- `.label01` - Form labels (14pt)
- `.label02` - Small labels (12pt)
- `.label03` - Micro labels (10pt)

### Button Styles
- `.button01` - Primary buttons (16pt)
- `.button02` - Secondary buttons (14pt)
- `.button03` - Small buttons (12pt)

### Medical Styles
- `.medical01` - Medical records (16pt)
- `.medical02` - Prescriptions (14pt)
- `.medical03` - Vital signs (18pt)
- `.medical04` - Medical notes (12pt)

### Accessibility Styles
- `.accessible01` - Large accessible text (20pt)
- `.accessible02` - High contrast text (16pt)
- `.accessible03` - Screen reader text (14pt)

## Font Sizes

```swift
public enum FontSize: CGFloat, CaseIterable {
    case micro = 8
    case tiny = 10
    case small = 12
    case regular = 14
    case medium = 16
    case large = 18
    case xlarge = 20
    case xxlarge = 24
    case xxxlarge = 28
    case huge = 32
    case massive = 36
    case enormous = 48
}
```

## Font Weights

```swift
public enum FontWeight: CaseIterable {
    case thin
    case light
    case regular
    case medium
    case semibold
    case bold
    case heavy
    case black
}
```

## Configuration

The NHS Fonts system includes configuration options:

```swift
public struct Configuration {
    public static let defaultFontFamily = "SF Pro Display"
    public static let medicalFontFamily = "SF Pro Text"
    public static let monospaceFontFamily = "SF Mono"
    
    public static let minimumFontSize: CGFloat = 12.0
    public static let maximumFontSize: CGFloat = 48.0
    public static let accessibilityMultiplier: CGFloat = 1.2
    
    public static let nhsCompliant = true
    public static let accessibilityCompliant = true
    public static let wcagAACompliant = true
}
```

## Accessibility Features

- **Dynamic Type Support** - All fonts support iOS Dynamic Type
- **Accessibility Sizing** - Built-in accessibility multipliers
- **High Contrast Support** - Optimized for high contrast mode
- **Screen Reader Support** - Optimized for VoiceOver
- **WCAG AA Compliance** - Meets accessibility standards

## NHS Compliance

The font system is designed to meet NHS brand guidelines:
- Uses system fonts for consistency
- Follows NHS color and typography standards
- Supports medical content requirements
- Ensures accessibility compliance

## Migration from FDSFont

If migrating from FDSFont, you can use the NHS fonts as follows:

```swift
// Old FDSFont usage
Text("Title")
    .font(.fromFDS(.bold, size: 24))

// New NHSFonts usage
Text("Title")
    .font(NHSFonts.font(.heading01))
```

## Examples

See `NHSFontsExample.swift` for comprehensive usage examples and previews of all available font styles.

## Best Practices

1. **Use semantic styles** - Prefer `.heading01` over custom sizes
2. **Maintain consistency** - Use the same style for similar content
3. **Consider accessibility** - Use accessible fonts when needed
4. **Test with Dynamic Type** - Ensure fonts work with all Dynamic Type sizes
5. **Follow NHS guidelines** - Use medical fonts for healthcare content
