//
//  HStackVStackZStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 23/05/2023.
//

import SwiftUI

struct HStackVStackZStackBootcamp: View {
    var body: some View {
      VStack (alignment: .leading) {
        Rectangle()
          .frame(width: 350, height: 200)
        
        ZStack {
          Rectangle()
            .fill(.cyan)
            .frame(width: 350, height: 200)
          
        }
      }
    }
}

struct HStackVStackZStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStackVStackZStackBootcamp()
    }
}
