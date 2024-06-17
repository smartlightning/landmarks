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
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

// Preview for the landmark row view
#Preview {
    let landmarks = ModelData().landmarks
    // Group to preview multiple landmark rows
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

