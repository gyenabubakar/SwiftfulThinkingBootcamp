//
//  BackgroundAndOverlaysBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 23/05/2023.
//

import SwiftUI

struct BackgroundAndOverlaysBootcamp: View {
    var body: some View {
//        Image(systemName: "bell.fill")
//        .resizable()
//        .frame(width: 50, height: 50)
//        .overlay(
//          Circle()
//            .foregroundColor(Color.red)
//            .frame(width: 20, height: 20),
//          alignment: .topTrailing
//        )
      
      Image(systemName: "play.fill")
        .font(.system(size: 50))
        .foregroundColor(.white)
        .background(
          Circle()
            .fill(
              LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]),
                startPoint: .topTrailing,
                endPoint: .bottomTrailing
              )
            )
            .shadow(
              color: Color(#colorLiteral(red: 0.5, green: 0.8, blue: 0.9, alpha: 0.8)),
              radius: 6, x: 5, y: 5
            )
            .frame(width: 80, height: 80)
            .overlay(
              Circle()
                .frame(width: 26, height: 26)
                .overlay(
                  Text("15")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.footnote)
                    .frame(alignment: .center)
                ),
              alignment: .topTrailing
            )
        )
    }
}

struct BackgroundAndOverlaysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlaysBootcamp()
    }
}
