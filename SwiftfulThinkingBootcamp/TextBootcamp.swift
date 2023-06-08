//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 21/05/2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
      VStack {
        Text("Hello, World! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning alot.")
          //.font(.title)
          //.fontWeight(.black)
          //.bold()
          //.underline()
          //.underline(true, color: Color.green)
          //.strikethrough()
          .font(.system(
              size: 18, weight: .bold, design: .monospaced
            ))
          .baselineOffset(10)
          .kerning(2)
          .multilineTextAlignment(.leading)
          //.baselineOffset(1.0)
          .frame(width: 350, height: 100, alignment: .leading)
          .minimumScaleFactor(0.8)
      }
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
      TextBootcamp()
        .previewDevice("iPhone 14")
    }
}
