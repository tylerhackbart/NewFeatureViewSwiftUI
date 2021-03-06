# NewFeatureView - SwiftUI

Here is a a quick SwiftUI view for presenting new features in your iOS App

![smartmockups_kytgdoto](https://user-images.githubusercontent.com/3589463/150895011-7bb04164-539d-4aaa-97bc-68d2c7f6c296.jpg)


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

This `UpdateItem` object takes in 3 parameters:

`id` - Unique for for loop

`icon` - Hooked up to SF Symbols - Check out [Apple's site](https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/) for more details

`content` - Text of what is inside the specific icon display

Example `UpdateItem`
```
UpdateItem(id: 1, icon: "x.circle", content: "Sample and this is the section of the same time that displays the view. This is only here and not other spot")
```


I usually hook it up to global variables that I can version bump every new release and connect the version number to local storage so that a user only gets it presented to them once when loading up the app.

And since its in its own View I trigger it with a `.sheet` and its attached to the top or first couple levels in my SwfitUI apps to trigger first opens

```
... View
.onAppear(perform: {
      if (settings.versionApp != global.version) {
          showingNewFeaturesView.toggle()
      }
})
.sheet(isPresented: $showingNewFeaturesView, onDismiss: {
 ... triggering version bump value for next version number
}) {
   NewFeatureView(
      versionNumber: global.version,
      updateItems: global.updateItems,
      bannerBeforeButtonText: global.tagLineNewFeatureScreen
   )
}
```


Happy Coding 👋
