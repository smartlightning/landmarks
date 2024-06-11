import Foundation
import SwiftUI
import CoreLocation

// Model struct for representing a landmark
struct Landmark: Hashable, Codable, Identifiable {
    // Unique identifier for the landmark
    var id: Int
    // Name of the landmark
    var name: String
    // Park where the landmark is located
    var park: String
    // State where the landmark is located
    var state: String
    // Description of the landmark
    var description: String
    
    // Private property for the image name
    private var imageName: String
    // Computed property to get the image
    var image: Image {
        Image(imageName)
    }
    // Private property for the coordinates
    private var coordinates: Coordinates
    // Computed property to get the location coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    // Nested struct for coordinates
    struct Coordinates: Hashable, Codable {
        // Latitude of the landmark
        var latitude: Double
        // Longitude of the landmark
        var longitude: Double
    }
}

