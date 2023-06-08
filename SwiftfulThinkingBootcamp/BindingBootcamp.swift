//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 01/06/2023.
//

import SwiftUI

struct BindingBootcamp: View {
  @State var bgColor = Color.black

  var body: some View {
    ZStack {
      bgColor
        .ignoresSafeArea()

      SwitchButton(bgColor: $bgColor)
    }
  }
}

struct SwitchButton: View {
  @Binding var bgColor: Color

  var body: some View {
    Button (action: {
      bgColor = bgColor == .black ? .white : .black
    }, label: {
      Text(self.label.uppercased())
        .font(.system(size: 18))
        .foregroundColor(bgColor == .black ? .black : .white)
    })
    .padding()
    .padding(.horizontal, 10)
    .background(bgColor == .black ? .white : .black)
    .cornerRadius(10)
  }
  
  var label: String {
    bgColor == .black ? "Go light!" : "Go dark!"
  }
}

struct BindingBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    BindingBootcamp()
  }
}
