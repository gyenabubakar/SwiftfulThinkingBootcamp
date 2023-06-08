//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 26/05/2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
  var body: some View {
    Rectangle()
      .fill(Color.yellow)
      .ignoresSafeArea()
      //.background(Color.red)
      
  }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    SafeAreaBootcamp()
  }
}
