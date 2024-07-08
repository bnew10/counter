//
//  ContentView.swift
//  Counter
//
//  Created by Bradley Newton on 7/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(counter)")
                .font(.largeTitle)
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            
            HStack(spacing: 20) {
                Button(action: {
                    incrementCounter(by: 1)
                }) {
                    Text("+1")
                        .font(.title)
                        .padding()
                        .frame(width: 79)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    incrementCounter(by: 5)
                }) {
                    Text("+5")
                        .font(.title)
                        .padding()
                        .frame(width: 79)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    incrementCounter(by: 10)
                }) {
                    Text("+10")
                        .font(.title)
                        .padding()
                        .frame(width: 79)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
            }
            
            Button(action: {
                reset()
            }) {
                Text("reset")
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
    
    private func incrementCounter(by value: Int) {
        counter += value
    }
    
    private func reset() {
        counter = 0;
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
