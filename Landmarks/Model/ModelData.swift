import Foundation
// use the Observable to support data changes without wrappers or bindings
// SWiftUI wathces for changes in the observable property and displays the desired view
@Observable
class ModelData {
    // Load the landmarks data from JSON file
    var landmarks: [Landmark] = load("landmarkData.json")
    
    // load hikes into model
    var hikes:[Hike] = load("hikeData.json")
    
    // instance of profile view
    var profile = Profile.default
    
    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    //adds computed categories dictionary to group landmarks
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}



// Function to load and decode JSON data from a file
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    // Ensure the file exists in the main bundle
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    // Attempt to read data from the file
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    // Attempt to decode the JSON data
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

