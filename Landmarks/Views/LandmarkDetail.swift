import SwiftUI

// Struct for creating a detailed view of a landmark
struct LandmarkDetail: View {
    // access envirnoment's model data
    @Environment(ModelData.self) var modelData
    // Landmark to be displayed in detail
    var landmark: Landmark
    
    // compute the index of the input landmark by comparing to model data
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    // Body of the landmark detail view
    var body: some View {
        // add modelData to View
        @Bindable var modelData = modelData
        ScrollView {
            // Display map view with landmark's coordinates
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            // Display circular image of the landmark
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // VStack for text details
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                // Display park and state information in a horizontal stack
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                // Divider between sections
                Divider()
                
                // Section title and description
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name) // Set navigation title
        .navigationBarTitleDisplayMode(.inline) // Inline display mode for navigation title
    }
}

// Preview for the landmark detail view
#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}

