import SwiftUI

// Struct for creating a view displaying a list of landmarks
struct LandmarkList: View {
    // Body of the landmark list view
    var body: some View {
        // List view containing all landmarks
        List(landmarks) { landmark in
            // Display each landmark row
            LandmarkRow(landmark: landmark)
        }
    }
}

// Preview for the landmark list view
#Preview {
    LandmarkList()
}

