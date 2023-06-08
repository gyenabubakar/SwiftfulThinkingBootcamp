//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 25/05/2023.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text("Hello, World!")
          .font(.title)
          .padding(.bottom)
        
        Text("You can use container views to group and compose multiple views into a single view hierarchy.")
      }
      .padding()
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(.white)
      .cornerRadius(10)
      .padding()
      .shadow(color: .gray.opacity(0.5), radius: 10, y: 3)
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
