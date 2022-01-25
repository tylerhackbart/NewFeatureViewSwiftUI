# NewFeatureView - SwiftUI

Here is a a quick SwiftUI view for presenting new features in your iOS App

![smartmockups_kytfkg2t](https://user-images.githubusercontent.com/3589463/150892795-da5f3ac7-c436-46b5-b8b0-aaadcc609044.jpg)


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




