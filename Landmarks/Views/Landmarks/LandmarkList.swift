import SwiftUI

// Struct for creating a view displaying a list of landmarks
struct LandmarkList: View {
/* The modelData property gets its value automatically, as long as the environment(_:) modifier has been applied to a parent. The @Environment property wrapper enables you to read the model data of the current view. Adding an environment(_:) modifier passes the data object down through the environment. */
    
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    // show only the favourites
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    // Body of the landmark list view
    var body: some View {
        // Split view for navigation
        NavigationSplitView {
            // List view containing all landmarks
            List {
                // add toggle to show/hide favourites
                // $ prefix binds the toggle to the state variable
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                // add a foreach to combine static and dynamic views in the list
                ForEach(filteredLandmarks) { landmark in
                    // Navigation link to landmark details
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        // Row view for each landmark
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
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
        .environment(ModelData())
}

