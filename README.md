# NewFeatureView - SwiftUI

Here is a a quick SwiftUI view for presenting new features in your iOS App











I usually hook it up to global variables connected to local storage so that a user only gets it presented to them once when loading up the app.

This is usually attached to the top or first couple levels in my apps to quickly use

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




