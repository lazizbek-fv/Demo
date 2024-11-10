//
//  ContentView.swift
//  Demo
//
//  Created by Lazizbek Fayzullayev on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let emojis = ["🕷️","🎃","😈","🤖"]
        HStack{
            ForEach(emojis.indices, id : \.self) { index in
                CardWiev(content:emojis[index])
            }
            
        }
        .padding()
        
    }
}
struct CardWiev :View {
    let content: String
    @State var isFacedUp: Bool = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 20)
            if isFacedUp {
                
                        base.foregroundColor(.orange)
                        base.strokeBorder(lineWidth : 2)
                Text(content).font(.largeTitle)
            }
            else    {
                base.foregroundColor(.yellow)
            }
        }
        .onTapGesture (){
            print("tapped")
            isFacedUp.toggle()
            }
            }
        }
































#Preview {
    ContentView()
}
