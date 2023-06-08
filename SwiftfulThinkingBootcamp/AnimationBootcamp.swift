//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 01/06/2023.
//

import SwiftUI

struct AnimationBootcamp: View {
  @State var shouldTransform = false

  var body: some View {
    VStack {
      Button(action: {
        shouldTransform.toggle()
      }, label: {
        Text("Transform")
          .font(.system(size: 20))
          .foregroundColor(.white)
          .kerning(1.2)
      })
      .padding()
      .padding(.horizontal, 10)
      .background(.blue.opacity(0.8))
      .cornerRadius(10)

      Spacer()

      RoundedRectangle(cornerRadius: shouldTransform ? 300 : 20)
        .frame(width: shouldTransform ? 100 : 300, height: shouldTransform ? 100 : 300)
        .rotationEffect(.degrees(shouldTransform ? 360 : 0))
        .foregroundColor(shouldTransform ? .orange : .black)
        .offset(y: shouldTransform ? 300 : 0)
        //.animation(.easeIn.delay(1).repeatCount(5, autoreverses: true), value: shouldTransform)
        .animation(.spring(dampingFraction: 1.0).repeatCount(5, autoreverses: true), value: shouldTransform)

      Spacer()
    }
  }

  func doAnimation() {
    withAnimation(.default.delay(1).repeatForever(autoreverses: true), {
      shouldTransform.toggle()
    })
  }
}

struct AnimationBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    AnimationBootcamp()
  }
}
