//
//  TextViews.swift
//  Bullseye
//
//  Created by Tianyu Zeng on 3/21/21.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(
            text.uppercased()
        )
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .fontWeight(.bold)
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instruction Text")
            BigNumberText(text: "Big Number Text")
            SliderText(text: "Slider Text")
        }
    }
}
