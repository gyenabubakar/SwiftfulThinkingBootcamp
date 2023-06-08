//
//  SpringAnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 01/06/2023.
//

import SwiftUI

struct SpringAnimationBootcamp: View {
  @State private var ballOffset: CGFloat = 0

  var body: some View {
    ZStack {
      VStack {
        Spacer()

        Circle()
          .frame(width: 50, height: 50)
          .offset(y: ballOffset)
          .animation(.spring(response: 0.5, dampingFraction: 0.25, blendDuration: 0), value: ballOffset)

        HStack {
          Button("Up") {
            ballOffset -= 100
          }
          .padding()
          .padding(.horizontal, 10)
          .background(.teal, ignoresSafeAreaEdges: [])
          .foregroundColor(.white)
          //.cornerRadius(10)

          Button("Down") {
            ballOffset += 100
          }
          .padding()
          .background(.teal, ignoresSafeAreaEdges: [])
          .foregroundColor(.white)
          //.cornerRadius(10)
        }
        //.padding(1)
      }
    }
  }
}

struct SpringAnimationBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    SpringAnimationBootcamp()
  }
}
