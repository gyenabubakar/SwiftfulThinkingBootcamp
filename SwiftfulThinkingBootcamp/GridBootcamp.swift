//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 26/05/2023.
//

import SwiftUI

struct GridBootcamp: View {
  let columns: [GridItem] = [
    GridItem(.flexible(), spacing: nil, alignment: .leading),
    GridItem(.flexible(), spacing: nil, alignment: .leading),
    GridItem(.flexible(), spacing: nil, alignment: .leading),
  ]

  var body: some View {
    ScrollView {
      Rectangle()
        .fill(.white)
        .frame(maxWidth: .infinity, minHeight: 300)
      
      LazyVGrid(columns: columns, spacing: nil, pinnedViews: [.sectionHeaders]) {
        Section(
          header:
            Text("Hello World")
            .font(.system(size: 20, weight: .bold))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(Color.green)
        ) {
          ForEach(0..<20) { index in
            Rectangle()
              .frame(height: 150)
              .overlay(
                Text("\(index + 1)")
                  .foregroundColor(.white)
              )
          }
        }
      }
    }
  }
}

struct GridBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    GridBootcamp()
  }
}
