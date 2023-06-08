//
//  SwiftUIView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 05/06/2023.
//

import SwiftUI

extension Int {
  func toWord() -> String {
    switch self {
      case 1:
        return "One"
      case 2:
        return "Two"
      case 3:
        return "Three"
      case 4:
        return "Four"
      case 5:
        return "Five"
      case 6:
        return "Six"
      case 7:
        return "Seven"
      default:
        return "Eight"
    }
  }
}

struct NavigationBootcamp: View {
  let colors: [Color] = [.black, .blue.opacity(0.6), .yellow, .red, .orange, .cyan, .green, .teal]
  let columns = [GridItem()]

  var body: some View {
    NavigationView {
      ScrollView(showsIndicators: true) {
        LazyVGrid(columns: columns, spacing: 20) {
          ForEach(0 ..< colors.count, id: \.self) { index in
            if colors[index] == .yellow {
              NavigationLink(
                destination: StageScreen(stage: index + 1),
                label: {
                  Card(color: colors[index], label: "\(index + 1)", textColor: .black)
                }
              )
            } else {
              NavigationLink(
                destination: StageScreen(stage: index + 1),
                label: {
                  Card(color: colors[index], label: "\(index + 1)")
                }
              )
            }
          }
        }
        .padding()
        .padding(.top, 20)
      }
      .navigationTitle("Life Stages")
    }
  }
}

struct StageScreen: View {
  let stage: Int
  
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    ScrollView {
    }
    .navigationTitle("Stage \(stage.toWord())")
    .navigationBarBackButtonHidden(true)
    .navigationBarItems(leading: Button(action: {
      presentationMode.wrappedValue.dismiss()
    }, label: {
      BackButton()
    }))
  }
}

struct BackButton: View {
  var body: some View {
    Image(systemName: "chevron.left.circle.fill")
      .resizable()
      .foregroundColor(.orange)
      .frame(width: 30, height: 30)
  }
}

struct Card: View {
  let color: Color
  let label: String
  let textColor: Color

  init(color: Color, label: String, textColor: Color = .white) {
    self.color = color
    self.label = label
    self.textColor = textColor
  }

  var body: some View {
    RoundedRectangle(cornerRadius: 15)
      .fill(color)
      .foregroundColor(.white)
      .frame(height: 100)
      .overlay {
        Text(label)
          .foregroundColor(textColor)
          .font(.system(size: 30, weight: .black))
      }
      .shadow(color: color.opacity(0.2), radius: 5, y: 10)
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBootcamp()
  }
}
