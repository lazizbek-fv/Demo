//
//  ContentView.swift
//  Demo
//
//  Created by Lazizbek Fayzullayev on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardWiev(isFacedUp: true)
            CardWiev(isFacedUp: true)
            CardWiev(isFacedUp: true)
            CardWiev()
            
        }
        .padding()
        
    }
}
struct CardWiev :View {
    @State var isFacedUp: Bool = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 20)
            if isFacedUp {
                
                        base.foregroundColor(.orange)
                        base.strokeBorder(lineWidth : 2)
                           Text("🤖").font(.largeTitle)
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
