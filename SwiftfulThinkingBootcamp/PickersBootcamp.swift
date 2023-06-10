//
//  PickersBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 10/06/2023.
//

import SwiftUI

struct PickersBootcamp: View {
  @State var selection = "1"
  
    var body: some View {
//      Picker("Hello World", selection: $selection) {
//        Text("Text 1").tag("1")
//        Text("Text 2").tag("2")
//        Text("Text 3").tag("3")
//      }
//      .pickerStyle(SegmentedPickerStyle())
//      .padding(.horizontal)
      
      Picker(selection: $selection, content: {
        Text("Text 1").tag("1")
        Text("Text 2").tag("2")
        Text("Text 3").tag("3")
      }, label: {
        Label(title: {
          Text("Some Picker")
        }, icon: {
          Image(systemName: "house")
        })
      })
    }
}

struct PickersBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickersBootcamp()
    }
}
