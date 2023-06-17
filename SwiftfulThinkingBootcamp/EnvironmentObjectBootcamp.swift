//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 13/06/2023.
//

import SwiftUI

struct UserModel: Identifiable {
  let id = UUID().uuidString
  var name: String
  var username: String
}

class UserViewModel: ObservableObject {
  @Published var user: UserModel? = nil

  init(name: String, username: String) {
    user = UserModel(name: name, username: username)
  }
}

struct EnvironmentObjectBootcamp: View {
  @StateObject var userViewModel = UserViewModel(name: "Gyen Abubakar", username: "GyenAbubakar")

  var body: some View {
    NavigationView {
      ScrollView(content: {
        VStack(spacing: 20) {
          ForEach(1 ..< 6) { num in
            RoundedRectangle(cornerRadius: 10)
              .frame(height: 150)
              .padding(.horizontal)
              .overlay {
                Text("\(num)")
                  .foregroundColor(.white)
                  .font(.title)
                  .fontWeight(.black)
              }
          }
        }
      })
      .navigationTitle("Home")
      .navigationBarItems(trailing: NavigationLink(destination: {
        ProfileScreen()
      }, label: {
        Circle()
          .fill(.gray)
          .frame(width: 40, height: 40)
      }))
    }
    .environmentObject(userViewModel)
  }
}

struct ProfileScreen: View {
  @EnvironmentObject var userViewModel: UserViewModel

  var body: some View {
    ScrollView {
      if let user = userViewModel.user {
        VStack {
          Circle()
            .frame(width: 100)
          Text("\(user.name)")
            .font(.title2.bold())
          Text("@\(user.username)")
            .font(.system(size: 16))
            .foregroundColor(.gray)
        }
        .padding(.top, 30)
      }
    }
    .navigationTitle("User Profile")
  }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    EnvironmentObjectBootcamp()
  }
}
