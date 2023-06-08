//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 25/05/2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
      VStack {
        HStack {
          Image(systemName: "person.crop.circle")
            .font(.largeTitle)
            .foregroundColor(.gray)
          
          Spacer()
          
          Image(systemName: "bell.badge")
            .symbolRenderingMode(.multicolor)
            .font(.largeTitle)
            .foregroundColor(.black)
        }
        .padding(.horizontal, 20)
        
        Spacer()
      }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
