//
//  AlertsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 08/06/2023.
//

import SwiftUI

struct AlertsBootcamp: View {
  @State var showAlert = false

  var body: some View {
    Button("Trigger Alert") {
      showAlert.toggle()
    }
    .font(.system(size: 20, weight: .bold))
    .foregroundColor(.white)
    .padding()
    .padding(.horizontal)
    .background(.orange)
    .alert("Something just happened!", isPresented: $showAlert) {
      Text("Oh well, here I am!")
    }
  }
}

struct AlertsBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    AlertsBootcamp()
  }
}
