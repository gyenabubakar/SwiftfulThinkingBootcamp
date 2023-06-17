//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 17/06/2023.
//

import SwiftUI

struct AsyncImageBootcamp: View {
  var width = 0
  var height = 0

  init() {
    width = Int(UIScreen.main.bounds.width)
    height = Int(UIScreen.main.bounds.height)
  }

  var url: URL? {
    URL(string: "https://picsum.photos/\(width)/\(height)")
  }

  var body: some View {
//    AsyncImage(url: url, content: )
//    AsyncImage(url: url, content: { image in
//      image
//        .resizable()
//        .frame(width: 300, height: 500)
//    }, placeholder: {
//      Text("Loading...")
//    })
//      .ignoresSafeArea()
    AsyncImage(url: url) { imagePhase in
      switch imagePhase {
        case .empty:
          Text("Loading Image...")
        case let .success(image):
          image
            .resizable()
            .frame(width: 300, height: 500)
        case let .failure(error):
          Text("Loading Image failed because: \(error.localizedDescription)")
        default:
          Text("Loading Image failed.")
      }
    }
  }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    AsyncImageBootcamp()
  }
}
