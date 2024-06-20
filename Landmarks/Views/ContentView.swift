import SwiftUI

// Main content view
struct ContentView: View {
    @State private var selection: Tab = .featured
    enum Tab {
        case featured
        case list
    }
    // Body of the content view
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)


            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

// Preview for the content view
#Preview {
    ContentView()
        .environment(ModelData())
}

