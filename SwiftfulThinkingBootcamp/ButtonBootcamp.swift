//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 29/05/2023.
//

import SwiftUI

struct ButtonBootcamp: View {
  @State var name = "Gyen"

  var body: some View {
    VStack {
      Text("Name: \(name)")
        .font(.largeTitle)

      Spacer()
        .frame(height: 50)

      Button("Sena") {
        self.name = "Sena"
      }

      Spacer()
        .frame(height: 20)

      Button(action: {
        self.name = "Felix"
      }, label: {
        Text("Felix")
          .font(.system(size: 25))
          .foregroundColor(.white)
          .padding(.horizontal, 60)
          .padding(.vertical, 20)
          .background(
            Color.red
              .cornerRadius(20)
          )
      })
      
      
    }
  }
}

struct ButtonBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ButtonBootcamp()
  }
}
