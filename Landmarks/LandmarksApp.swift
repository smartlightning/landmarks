// App entry point
import SwiftUI

// Main application structure
@main
struct LandmarksApp: App {
    // Main scene of the app
    @State private var modelData = ModelData()
    var body: some Scene {
        // Window group containing the initial view
        WindowGroup {
            // Initial content view
            ContentView()
                .environment(modelData)
        }
    }
}
