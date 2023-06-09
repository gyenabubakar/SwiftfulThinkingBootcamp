//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 09/06/2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
  @State var background = Color.blue

  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      Image(systemName: "folder.fill")
        .font(.title)
      Text("Folder name")
        .font(.title.bold())
      Text("Some description about this folder that might help users understand what it's used for.")
    }
    .foregroundColor(.white)
    .padding(20)
    .background(background)
    .cornerRadius(20)
    .frame(width: 300)
    .contextMenu {
      Button(action: {
        background = .red
      }, label: {
        Label("Change to red", systemImage: "paintbrush.fill")
      })
      Button(action: {
        background = .orange
      }, label: {
        Label("Change to orange", systemImage: "paintbrush.pointed.fill")
      })
      Button(action: {
        background = .black
      }, label: {
        Label("Change to black", systemImage: "paintpalette.fill")
      })
    }
  }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ContextMenuBootcamp()
  }
}
