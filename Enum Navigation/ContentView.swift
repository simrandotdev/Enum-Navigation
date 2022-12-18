//
// Created for Enum Navigation
// by Stewart Lynch on 2022-10-30
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            ForEach(Topic.allCases) { topicCase in
                NavigationLink(topicCase.rawValue, value: topicCase)
                    .buttonStyle(.borderedProminent)
            }
            .navigationDestination(for: Topic.self) { topic in
                topic.body
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
