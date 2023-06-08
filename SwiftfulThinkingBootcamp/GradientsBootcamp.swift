//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 23/05/2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
      Rectangle()
        .fill(
          //LinearGradient(
            //colors: [Color.red, Color.orange],
            //startPoint: .topLeading,
            //endPoint: .bottomTrailing
          //)
          //AngularGradient(colors: [Color.red, Color.blue], center: .topLeading)
          RadialGradient(
            colors: [Color.red, Color.blue],
            center: .center,
            startRadius: 100,
            endRadius: 50
          )
        )
        .frame(width: 300, height: 150)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
