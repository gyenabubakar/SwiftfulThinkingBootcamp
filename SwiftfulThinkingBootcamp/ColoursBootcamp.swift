//
//  ColoursBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 21/05/2023.
//

import SwiftUI

struct ColoursBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
        .fill(
          //Color.primary
          //Color(#colorLiteral(red: 1, green: 1, blue: 0, alpha: 1))
          Color(UIColor.systemBackground)
        )
        .frame(width: 300, height: 150)
        .shadow(color: Color("CustomColour").opacity(0.7), radius: 40, x: 3, y: 5)
    }
}

struct ColoursBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColoursBootcamp()
    }
}
