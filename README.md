# NewFeatureView - SwiftUI

Here is a a quick SwiftUI view for presenting new features in your iOS App








I usually hook it up to global variables connected to local storage so that a user only gets it presented to them once when loading up the app.

Right below

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




