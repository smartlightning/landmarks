import SwiftUI

// Struct for creating a view displaying a list of landmarks
struct LandmarkList: View {
    // Body of the landmark list view
    var body: some View {
        // Split view for navigation
        NavigationSplitView {
            // List view containing all landmarks
            List(landmarks) { landmark in
                // Navigation link to landmark details
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    // Row view for each landmark
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks") // Set navigation title
        } detail: {
            // Default text when no landmark is selected
            Text("Select a Landmark")
        }
    }
}

// Preview for the landmark list view
#Preview {
    LandmarkList()
}

