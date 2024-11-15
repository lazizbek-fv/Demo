//
//  EmojiMemoryGame.swift
//  Demo
//
//  Created by Lazizbek Fayzullayev on 14/11/24.
//

import SwiftUI
func createCardContent(forPairsIndex index: Int) -> String {
    return ["🕷️", "🎃", "😈", "🤖", "👻", "🧙‍♀️", "🧛‍♂️", "🧟‍♀️", "🕷️", "🎃", "😈", "🤖", "🕷️", "🎃", "😈", "🤖", "👻", "🧙‍♀️", "🧛‍♂️", "🧟‍♀️", "🕷️", "🎃", "😈", "🤖"] [index]
}

class EmojiMemoryGame {
    private var model = MemoryGame(numberOfPairsOfCards: 4, cardCategoryFactory:{  ( index: Int) -> String in
                                   return ["🕷️", "🎃", "😈", "🤖", "👻", "🧙‍♀️", "🧛‍♂️", "🧟‍♀️", "🕷️", "🎃", "😈", "🤖", "🕷️", "🎃", "😈", "🤖", "👻", "🧙‍♀️", "🧛‍♂️", "🧟‍♀️", "🕷️", "🎃", "😈", "🤖"] [index]
                                   }
    )

    var cards: Array<MemoryGame<String>.Card> {
       return model.cards
    }
    func choose (_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
