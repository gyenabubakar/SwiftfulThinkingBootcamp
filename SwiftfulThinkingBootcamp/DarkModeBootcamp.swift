//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 12/06/2023.
//

import SwiftUI

struct DarkModeBootcamp: View {
  @Environment(\.colorScheme) var colorScheme

  var body: some View {
    Text("Hello, World!")
      .foregroundColor(colorScheme == .dark ? .black : .white)
      .padding()
      .padding(.horizontal)
      .background(Color("MainColor"))
  }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    DarkModeBootcamp()
  }
}
