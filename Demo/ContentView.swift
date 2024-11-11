//
//  ContentView.swift
//  Demo
//
//  Created by Lazizbek Fayzullayev on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🕷️", "🎃", "😈", "🤖", "👻", "🧙‍♀️", "🧛‍♂️", "🧟‍♀️", "🕷️", "🎃", "😈", "🤖", "🕷️", "🎃", "😈", "🤖", "👻", "🧙‍♀️", "🧛‍♂️", "🧟‍♀️", "🕷️", "🎃", "😈", "🤖"]
    @State var cardCount: Int = 4
    var body: some View {
        VStack {
            ScrollView {
                cards
            }

            Spacer()
            HStack {
                cardAdder
                Spacer()
                cardRemove
            }
        }
        .padding()
    }

    func cardCountAdjustment(by count: Int, name: String) -> some View {
        Button(name) {
            cardCount += count
        }
        .disabled(cardCount + count < 1 || cardCount + count > emojis.count)
    }

    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
            ForEach(0 ..< cardCount, id: \.self) { index in
                CardWiev(content: emojis[index])
                    .aspectRatio(2 / 3, contentMode: .fit)
            }
        }
    }

    var cardAdder: some View {
        cardCountAdjustment(by: -1, name: "Remove Card")
    }

    var cardRemove: some View {
        cardCountAdjustment(by: 1, name: "Add Card")
    }
}

struct CardWiev: View {
    let content: String
    @State var isFacedUp: Bool = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 20)
            Group {
                base.foregroundColor(.orange)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }.opacity(isFacedUp ? 1 : 0)
            base.fill().opacity(isFacedUp ? 0 : 1).foregroundStyle(.orange)
            base.strokeBorder(lineWidth: 2)
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
