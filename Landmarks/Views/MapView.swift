import SwiftUI
import MapKit

// Struct for creating a map view
struct MapView: View {
    // Coordinate for the map's center
    var coordinate: CLLocationCoordinate2D

    // Body of the map view
    var body: some View {
        // Display map with a constant position set to the defined region
        Map(position: .constant(.region(region)))
    }

    // Computed property to define the map region
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

// Preview for the map view
#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}

