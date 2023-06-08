//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 23/05/2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
      Image(systemName: "trash.circle.fill")
        //.font(.system(size: 150, weight: .bold))
        //.aspectRatio(contentMode: .fill)
        .resizable()
        .scaledToFit()
        .foregroundColor(Color.blue)
        .frame(width: 300, height: 300)
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
