//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 07/06/2023.
//

import SwiftUI

struct ListBootcamp: View {
  @State var fruits = [
    "Apple", "Mango", "Blackberry", "Grape", "Orange",
  ]

  var body: some View {
    NavigationView {
      List {
        Section(header: listHeader) {
          ForEach(fruits, id: \.self) { element in
            Text(element)
          }
          .onDelete(perform: deleteFruit)
          .onMove(perform: moveFruit)
        }
      }
      .listStyle(InsetGroupedListStyle())
      .navigationBarItems(leading: EditButton(), trailing: Button("Add", action: addFruit))
      .navigationTitle("Grocery List")
    }
    .tint(.purple)
  }

  var listHeader: some View {
    HStack {
      Image(systemName: "list.clipboard")
      Text("Fruits")
    }
    .font(.system(size: 18, weight: .bold))
    .foregroundColor(.purple)
  }

  func addFruit() {
    fruits.insert("Banana", at: 0)
  }
  func deleteFruit(indices: IndexSet) {
    fruits.remove(atOffsets: indices)
  }

  func moveFruit(indices: IndexSet, newOffset: Int) {
    fruits.move(fromOffsets: indices, toOffset: newOffset)
  }
}

struct ListBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ListBootcamp()
  }
}
