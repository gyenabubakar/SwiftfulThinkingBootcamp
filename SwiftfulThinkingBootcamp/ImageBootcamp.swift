//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 23/05/2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
      //Image("lyrebird-logo")
        //.renderingMode(.template)
        //.foregroundColor(.green)
        //.frame(width: 300, height: 200)
      
      Image("camel")
        .resizable()
        .scaledToFill()
        .frame(width: 300, height: 200)
        .clipShape(Ellipse())
        .border(.yellow, width: 4)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
