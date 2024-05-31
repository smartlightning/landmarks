//
//  ContentView.swift
//  Landmarks
//
//  Created by Chris McQueen on 29.05.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height:300)
            CircleImage().offset(y:-130).padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(.largeTitle).foregroundColor(.green)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    .fontWeight(.regular)
                    Spacer()
                    Text("California")
                }
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
