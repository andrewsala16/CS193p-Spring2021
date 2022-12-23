//
//  ContentView.swift
//  Memorize2023
//
//  Created by Andrew Sala on 12/19/22.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["🫦", "🫥", "❌", "🆗","🫁","🤙🏼","🫱🏿‍🫲🏻","🐨","😶‍🌫️","🤢","🤮","✅","🚗", "🛴", "✈️", "🛵", "⛵️", "🚎", "🚐", "🚛", "🛻", "🏎", "🚂", "🚊"]
    @State var emojiCount = 20
    var body: some View {
        VStack{
            LazyVGrid(columns: [GridItem(.adaptive(minimum:100))]){
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                }
            
                
            }
            .foregroundColor(.pink)
            Spacer()
            HStack{
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
            .font(.largeTitle)
            
        }
        .padding(.horizontal)
        

    }
    
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
}

struct CardView: View {
    var content: String
    @State var faceUp: Bool = true
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius:20.0)
            if faceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth:3)
                Text(content).font(.largeTitle)
            }
            else{
                shape.fill()
            }
        }
        .onTapGesture {faceUp = !faceUp }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
        ContentView().preferredColorScheme(.light)
    }
}
