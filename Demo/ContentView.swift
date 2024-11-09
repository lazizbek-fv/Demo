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
            CardWiev()
            CardWiev()
            CardWiev()
            
        }
        .padding()
        
    }
}
struct CardWiev :View {
    var isFacedUp: Bool = false
    var body: some View {
        ZStack {
            if isFacedUp {
                RoundedRectangle(cornerRadius: 20)
                               .foregroundColor(.orange)
                           RoundedRectangle(cornerRadius: 19)
                               .strokeBorder(lineWidth : 2)
                           Text("🤖").font(.largeTitle)
            }
            else    {
                RoundedRectangle(cornerRadius: 20)
                               .foregroundColor(.orange)
            }
           
                
                
              
                
        }
    }
}
































#Preview {
    ContentView()
}
