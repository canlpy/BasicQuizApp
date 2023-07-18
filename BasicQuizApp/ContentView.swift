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

let questions: [Question] = [
    Question(text: "What is the capital of France?", answers: ["Paris", "London", "Berlin"], correctAnswerIndex: 0),
    Question(text: "What is the capital of Germany?", answers: ["Berlin", "Paris", "Rome"], correctAnswerIndex: 0),
    Question(text: "What is the capital of Italy?", answers: ["Rome", "Madrid", "Athens"], correctAnswerIndex: 0)
]

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
