//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 05/06/2023.
//

import SwiftUI

struct SheetsBootcamp: View {
  @State var showSheet = false

  var body: some View {
    Button(action: {
      showSheet.toggle()
    }, label: {
      Text("Show Sheet")
        .font(.system(size: 20))
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal, 10)
        .background(.black)
        .cornerRadius(20)
    })
//    .sheet(isPresented: $showSheet) {
//      BottomSheet()
//    }
    .fullScreenCover(isPresented: $showSheet) {
      BottomSheet()
    }
  }
}

struct BottomSheet: View {
  @Environment(\.presentationMode) var mode

  var body: some View {
    ZStack {
      Color.black
        .ignoresSafeArea(.all, edges: .vertical)

      Button(action: {
        mode.wrappedValue.dismiss()
      }, label: {
        Text("Hide Sheet")
          .font(.system(size: 20))
          .foregroundColor(.black)
          .padding()
          .padding(.horizontal, 10)
          .background(.white)
          .cornerRadius(20)
      })
    }
  }
}

struct SheetsBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    SheetsBootcamp()
  }
}
