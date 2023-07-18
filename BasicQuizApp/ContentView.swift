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
    @State private var currentQuestionIndex = 0
    @State private var score = 0
    @State private var showAlert = false

    var body: some View {
        VStack {
            Text(questions[currentQuestionIndex].text)
                .font(.largeTitle)
                .padding()
            
            ForEach(0..<questions[currentQuestionIndex].answers.count) { index in
                Button(action: {
                    checkAnswer(index)
                }) {
                    Text(questions[currentQuestionIndex].answers[index])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(.bottom)
            }
            
            Text("Score: \(score)")
                .font(.title)
                .padding()
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Quiz Completed"), message: Text("Your score is \(score)"), dismissButton: .default(Text("OK")) {
                resetQuiz()
            })
        }
    }
    
    func checkAnswer(_ answerIndex: Int) {
        if answerIndex == questions[currentQuestionIndex].correctAnswerIndex {
            score += 1
        }
        
        if currentQuestionIndex + 1 < questions.count {
            currentQuestionIndex += 1
        } else {
            showAlert = true
        }
    }

    func resetQuiz() {
        currentQuestionIndex = 0
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
