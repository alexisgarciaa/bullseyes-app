//
//  ContentView.swift
//  bullseyes game
//
//  Created by Alexis on 12/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.00
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\n PUT THE BULLSEYES AS CLOSE AS YOU CAN")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
                
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            
            Button(action: {
                alertIsVisible = true
                
            }) {
                Text("Hit me ")
            }
            .alert(isPresented: $alertIsVisible,
                   content: {
                let roundedValue: Int = Int(sliderValue.rounded())
                return Alert(title: Text("hello ther "), message: Text("the Slider value is \(roundedValue).\n" + "your points are \(game.Point(sliderValue: roundedValue))"), dismissButton: .default(Text("Awesome")))
            })

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//Portrait mode
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
