import SwiftUI

// Struct for creating a row view for a landmark
struct LandmarkRow: View {
    // Landmark to be displayed
    var landmark: Landmark
    
    // Body of the landmark row view
    var body: some View {
        HStack {
            // Display the landmark image, resizable with a specific frame
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            // Display the landmark name
            Text(landmark.name)
            // Add a spacer to push content to the edges
            Spacer()
        }
    }
}

// Preview for the landmark row view
#Preview {
    // Group to preview multiple landmark rows
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

