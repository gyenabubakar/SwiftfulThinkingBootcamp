//
//  AppStoreBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 17/06/2023.
//

import SwiftUI

struct AppStorageBootcamp: View {
  @AppStorage("name") var name: String = ""

  var body: some View {
    VStack {
      Text("\(name)")
        .font(.title.bold())
      
      TextField("Enter a name here", text: $name)
        .font(.system(size: 20))
        .padding()
        .background(.gray.opacity(0.2))
        .cornerRadius(10)
        .padding()
      
//      Button("Save name") {
//        if name.count > 0 {
//          UserDefaults.standard.set(name, forKey: "name")
//        }
//      }
//      .disabled(name.count == 0)
    }
//    .onAppear {
//      if let savedName = UserDefaults.standard.string(forKey: "name") {
//        self.name = savedName
//      }
//    }
  }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    AppStorageBootcamp()
  }
}
