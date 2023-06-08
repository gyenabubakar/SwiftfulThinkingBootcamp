//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 25/05/2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
  var body: some View {
    ScrollView(showsIndicators: false) {
      LazyVStack(spacing: 40) {
        ForEach(0..<10) { index in
          ScrollView(.horizontal) {
            LazyHStack(spacing: 20) {
              ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 20)
                  .frame(width: 300, height: 280)
              }
            }
            .padding(.horizontal)
          }
        }
      }
    }
  }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ScrollViewBootcamp()
  }
}
