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
  @State var showPopoverSheet = true
  @State var newFruit = ""

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
      .navigationBarItems(leading: EditButton(), trailing: addButton)
      .navigationTitle("Grocery List")
    }
    .tint(.purple)
  }

  var addButton: some View {
    Button("Add", action: {
      showPopoverSheet.toggle()
    })
    .popover(isPresented: $showPopoverSheet) {
      AddFruitPopover(fruits: $fruits)
    }
  }

  var listHeader: some View {
    HStack {
      Image(systemName: "list.clipboard")
      Text("Fruits")
    }
    .font(.system(size: 16, weight: .bold))
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

struct AddFruitPopover: View {
  @Environment(\.presentationMode) var presentationMode
  
  @Binding var fruits: [String]
  @State var newFruit = ""
  
  var fruitAlreadyExists: Bool {
    !newFruit.isEmpty && fruits.contains(newFruit)
  }
  var cantSubmitForm: Bool {
    fruitAlreadyExists || newFruit.count <= 2
  }
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("Add a new fruit")
        .font(.title.bold())
        .padding()
      
      TextField("Enter fruit name", text: $newFruit)
        .font(.system(size: 20))
        .foregroundColor(.black)
        .padding()
        .padding(.horizontal, 5)
        .background(.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(.horizontal)
        .padding(.bottom)
      
      if fruitAlreadyExists {
        Text("\(newFruit) is already in the list. Type another.")
          .foregroundColor(.red)
          .frame(maxWidth: .infinity, alignment: .center)
      }

      Spacer()

      HStack(alignment: .center) {
        Button(action: addFruit, label: {
          Text("Save fruit")
            .font(.headline)
        })
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal)
        .background(cantSubmitForm ? .gray : .purple)
        .cornerRadius(10)
        .disabled(cantSubmitForm)
      }
      .frame(maxWidth: .infinity, alignment: .center)
    }
    .frame(maxWidth: .infinity, alignment: .leading)
  }
  
  func addFruit() {
    if !cantSubmitForm {
      fruits.insert(newFruit, at: 0)
      presentationMode.wrappedValue.dismiss()
    }
  }
}

struct ListBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ListBootcamp()
  }
}
