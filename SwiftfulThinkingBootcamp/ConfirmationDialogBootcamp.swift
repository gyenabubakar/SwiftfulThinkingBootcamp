//
//  ConfirmationDialogBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 09/06/2023.
//

import SwiftUI

struct ConfirmationDialogBootcamp: View {
  @State var showConfirmationDialog = false

  var body: some View {
    VStack {
      HStack {
        Circle()
          .frame(width: 60)
        VStack(alignment: .leading) {
          Text("Gyen Abubakar")
            .font(.system(size: 22, weight: .medium))
          Text("@GyenAbubakar")
            .foregroundColor(.black.opacity(0.7))
        }
        Spacer()
        Image(systemName: "ellipsis")
          .font(.system(size: 18))
          .onTapGesture {
            showConfirmationDialog.toggle()
          }
          .confirmationDialog(
            "What do you want to do?",
            isPresented: $showConfirmationDialog,
            titleVisibility: .visible
          ) {
            Button("Share") {
              print("Pressed Share!")
            }
            Button("Report") {
              print("Pressed Report!")
            }
            Button("Edit") {
              print("Pressed Edit!")
            }
            Button("Delete", role: .destructive) {
              print("Pressed Delete!")
            }
          }
      }
      .padding(.horizontal)

      Rectangle()
        .frame(height: 300)
    }
  }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ConfirmationDialogBootcamp()
  }
}
