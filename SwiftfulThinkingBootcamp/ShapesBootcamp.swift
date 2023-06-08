//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 21/05/2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
      //Circle()
      Rectangle()
        .trim(from: 0.2, to: 0.9)
        .stroke(Color.green, lineWidth: 5)
        .foregroundColor(Color.black)
        //.fill(Color.red)
        //.foregroundColor(.teal)
        .frame(width: 300, height: 150)
        //.cornerRadius(30)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
