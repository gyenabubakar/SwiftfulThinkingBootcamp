//
//  ObservableObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 12/06/2023.
//

import SwiftUI

struct FruitsModel: Identifiable {
  let id = UUID().uuidString
  let name: String
  var count: Int
}

class FruitsViewModel: ObservableObject {
  @Published var fruits: [FruitsModel] = []

  init() {
    let theseFruits = [
      FruitsModel(name: "Apple", count: 50),
      FruitsModel(name: "Pineapples", count: 13),
      FruitsModel(name: "Watermelon", count: 28),
      FruitsModel(name: "Avocado", count: 78),
      FruitsModel(name: "Oranges", count: 7),
    ]
    self.addFruits(theseFruits)
  }

  func addFruits(_ fruits: [FruitsModel]) {
    self.fruits.append(contentsOf: fruits)
  }

  func removeFruit(indexSet: IndexSet) {
    fruits.remove(atOffsets: indexSet)
  }
}

struct ObservableObjectBootcamp: View {
  @StateObject var fruitsVM = FruitsViewModel()

  var body: some View {
    NavigationView {
      List {
        ForEach(fruitsVM.fruits) { fruit in
          HStack {
            Text(fruit.name)
            Spacer()
            Text("\(fruit.count)")
              .foregroundColor(.white)
              .font(.headline)
              .padding(3)
              .padding(.horizontal, 2)
              .background(.teal)
              .cornerRadius(5)
          }
        }
        .onDelete(perform: fruitsVM.removeFruit)
      }
      .navigationTitle("Fruits")
      .navigationBarItems(
        trailing: NavigationLink(destination: {
          FruitsCountScreen(fruitsVM: fruitsVM)
        }, label: {
          Image(systemName: "arrow.right.circle.fill")
            .font(.system(size: 25))
            .foregroundColor(.teal)
        })
      )
    }
  }
}

struct FruitsCountScreen: View {
  @ObservedObject var fruitsVM: FruitsViewModel

  var totalFruits: Int {
    fruitsVM.fruits.reduce(0) { partialResult, fruit in
      partialResult + fruit.count
    }
  }

  var body: some View {
    Text("\(totalFruits)")
      .font(.system(size: 100, weight: .black))
      .foregroundColor(.teal)
      .navigationTitle("Total Number of Fruits")
  }
}

struct ObservableObjectBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ObservableObjectBootcamp()
  }
}
