// Circle image view
import SwiftUI

// Struct for creating a circular image view
struct CircleImage: View {
    // Image to be displayed
    var image: Image
    
    // Body of the circle image view
    var body: some View {
        // Display image clipped to a circle
        image
            .clipShape(Circle())
            // Overlay a white circle stroke
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            // Add a shadow with a radius of 7
            .shadow(radius: 7)
    }
}

// Preview for the circle image view
#Preview {
    CircleImage(image: Image("Turtlerock"))
}

