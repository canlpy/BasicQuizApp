//
//  ContentView.swift
//  BasicQuizApp
//
//  Created by Can Alpay on 18.07.2023.
//

import SwiftUI


struct Question {
    let text: String
    let answers: [String]
    let correctAnswerIndex: Int
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
