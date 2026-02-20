//
//  ContentView.swift
//  CloudCounter
//
//  Created by Ms.Thanaporn Ngamsangeim on 17/2/2569 BE.
//
//  test2

import SwiftUI

struct ContentView: View {

    @StateObject private var model: CounterModel = CounterModel()
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.pink, .purple],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.3)
            .ignoresSafeArea()

            VStack(spacing: 16) {

                Text("Cutie Clickie!")
                    .font(.system(size: 45,design: .rounded))
                    .bold()
                Text("click me till u'r happi <3")
                    .font(.system(size: 32,design: .rounded))
                    

                Text("\(model.value)")
                    .font(.system(size: 64, weight: .bold, design: .rounded)).foregroundColor(.white.opacity(5))
                    
                

                Text(model.isEven() ? "Even 🐶✨" : "Odd 🐥🌸")
                    .font(.headline)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(model.isEven() ? Color.pink.opacity(0.2) : Color.purple.opacity(0.25))
                    .cornerRadius(20)

                HStack(spacing: 12) {

                    Button("−5") {
                        model.decrement()
                    }
                    .buttonStyle(.borderedProminent)

                    Button("+9") {
                        model.increment()
                    }
                    .buttonStyle(.borderedProminent)
                }

                Button("Reset") {
                    model.reset()
                }
                .buttonStyle(.bordered)
            }
            .padding()

        }
    }
}
