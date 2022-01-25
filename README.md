# NewFeatureView - SwiftUI

Here is a a quick SwiftUI view for presenting new features in your iOS App

![smartmockups_kytfkg2t](https://user-images.githubusercontent.com/3589463/150892795-da5f3ac7-c436-46b5-b8b0-aaadcc609044.jpg)

This View component has 3 parameters:

`versionNumber` - App version number

`bannerBeforeButtonText` - Banner text before the button 😆

`updateItems` - Is an array of `UpdateItem` struct objects, breakdown below

Example `NewFeatureView`
```
NewFeatureView(
      versionNumber: global.version,
      updateItems: global.updateItems,
      bannerBeforeButtonText: global.tagLineNewFeatureScreen
   )
```

Breakdown of `UpdateItem`

```
struct UpdateItem {
    public var id: Int
    public var icon: String
    public var content: String

    init(id: Int, icon: String, content: String) {
        self.id = id
        self.icon = icon
        self.content = content
    }
}
```

This UpdateItem object takes in 3 parameters:

`id` - Unique for for loop

`icon` - Hooked up to SF Symbols - Check out Apple's site for more details https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/

`content` - Text of what is inside the specific icon display

Example UpdateItem
```
UpdateItem(id: 1, icon: "x.circle", content: "Sample and this is the section of the same time that displays the view. This is only here and not other spot")
```

I usually hook it up to global variables connected to local storage so that a user only gets it presented to them once when loading up the app.

This is usually attached to the top or first couple levels in my SwfitUI apps to quickly use

```
.sheet(isPresented: $showingNewFeaturesView, onDismiss: {
 ... triggering version bump value for next version number
}) {
   NewFeatureView(
      versionNumber: global.version,
      updateItems: global.updateItems,
      bannerBeforeButtonText: global.tagLineNewFeatureScreen
   )
}




