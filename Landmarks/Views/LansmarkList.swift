import SwiftUI

struct LansmarkList: View {
    var body: some View {
        List(landmarks) {
            landmark in LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LansmarkList()
}
