//
//  TabViewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 12/06/2023.
//

import SwiftUI

enum Screen {
  case home
  case notifications
  case profile
}

struct TabViewsBootcamp: View {
  @State var currentScreen = Screen.home

  var body: some View {
    TabView(selection: $currentScreen) {
      HomeScreen(navigate: self.navigate)
        .tag(Screen.home)
        .tabItem {
          Label("Home", systemImage: "house")
            .environment(\.symbolVariants, currentScreen == .home ? .fill : .none)
        }
      Text("Notifications")
        .tag(Screen.notifications)
        .tabItem {
          Label("Notifications", systemImage: "bell")
            .environment(\.symbolVariants, currentScreen == .notifications ? .fill : .none)
        }
      Text("Profile")
        .tag(Screen.profile)
        .tabItem {
          Label("Profile", systemImage: "person")
            .environment(\.symbolVariants, currentScreen == .profile ? .fill : .none)
        }
    }
    // .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    .tint(.red)
  }

  func navigate(_ screen: Screen) {
    currentScreen = screen
  }
}

struct HomeScreen: View {
  let navigate: (_ screen: Screen) -> Void

  var body: some View {
    Button(action: {
      navigate(.notifications)
    }, label: {
      Text("Go to Notifications")
    })
    .foregroundColor(.white)
    .padding()
    .padding(.horizontal)
    .background(.red)
    .cornerRadius(10)
  }
}

struct TabViewsBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    TabViewsBootcamp()
  }
}
