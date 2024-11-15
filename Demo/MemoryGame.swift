//
//  MemorizeGame.swift
//  Demo
//
//  Created by Lazizbek Fayzullayev on 14/11/24.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardCategoryFactory: (Int) -> CardContent) {
        cards = []
        
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardCategoryFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    struct Card{
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
    }
}
