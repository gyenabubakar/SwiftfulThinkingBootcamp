//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 04/06/2023.
//

import SwiftUI

struct TransitionBootcamp: View {
  @State var showDetails = false

  var body: some View {
    ZStack(alignment: .bottom) {
      VStack {
        Button("SHOW DETAILS") {
          showDetails.toggle()
        }
        Spacer()
      }

      Group {
        if showDetails {
          RoundedRectangle(cornerRadius: 30)
            .frame(height: UIScreen.main.bounds.height * 0.5)
            .transition(AnyTransition.asymmetric(
              insertion: .move(edge: .bottom),
              removal: .move(edge: .bottom)
            ))
        }
      }
      .animation(.spring(response: 0.2, dampingFraction: 2), value: showDetails)
    }
    .ignoresSafeArea(edges: .bottom)
  }
}

struct TransitionBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    TransitionBootcamp()
  }
}
