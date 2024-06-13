import Foundation
// use the Observable to support data changes without wrappers or bindings
// SWiftUI wathces for changes in the observable property and displays the desired view
@Observable
class ModelData {
    // Load the landmarks data from JSON file
    var landmarks: [Landmark] = load("landmarkData.json")
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

