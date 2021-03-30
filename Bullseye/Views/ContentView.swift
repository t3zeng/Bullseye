//
//  ContentView.swift
//  Bullseye
//
//  Created by Tianyu Zeng on 3/17/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionsView(game: $game)
                SliderView(sliderVal: $sliderValue)
                HitMeButton(alertIsVisible: $alertIsVisible, sliderVal: $sliderValue, game: $game)
            }
        }
    }
}

struct InstructionsView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack{
            InstructionText(text: "🎯🎯🎯\nput the bulleseye as close as you can to")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            BigNumberText(text: String(game.target))
        }
    }
}

struct SliderView: View {
    @Binding var sliderVal: Double
    
    var body: some View {
        HStack {
            SliderText(text: "1")
            Slider(value: $sliderVal, in: 1.0...100.0)
            SliderText(text: "100")
        }
        .padding()
    }
}

struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderVal: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            print("hey")
            alertIsVisible = true
        }) {
            Text("Hit Me!".uppercased())
                .bold()
                .font(.title3)
        }
        .foregroundColor(Color.white)
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .cornerRadius(21)
        .overlay(
            RoundedRectangle(cornerRadius: 21)
                .strokeBorder(Color.white, lineWidth: 2)
        )
        .alert(isPresented: $alertIsVisible, content: {
            let roundedValue = Int(sliderVal.rounded())
            return Alert(title: Text("My first alert"), message: Text("Selected value is \(roundedValue).\n"+"You scored \(game.points(sliderValue:roundedValue)) points this round"), dismissButton: .default(Text("Awesome")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
