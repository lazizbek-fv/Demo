//
//  ContentView.swift
//  Demo
//
//  Created by Lazizbek Fayzullayev on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🕷️","🎃","😈","🤖","👻","🧙‍♀️","🧛‍♂️","🧟‍♀️","🕷️","🎃","😈","🤖"]
    @State var cardCount: Int = 4
    var body: some View {
        VStack{
            HStack {
                ForEach(0..<cardCount, id: \.self) { index in
                    CardWiev(content: emojis[index])
                    }
            }
            HStack {
                Button("Add Card") {
                    if cardCount < emojis.count {
                        cardCount += 1
                    }
                
                }
                Spacer()
                Button("Remove Card") {
                    if cardCount > 1 {
                        cardCount -= 1
                    }
                    
                }
            }
        }
       
        .padding()
    }
}

struct CardWiev: View {
    let content: String
    @State var isFacedUp: Bool = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 20)
            if isFacedUp {

                base.foregroundColor(.orange)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.foregroundColor(.yellow)
            }
        }
        .onTapGesture {
            print("tapped")
            isFacedUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
