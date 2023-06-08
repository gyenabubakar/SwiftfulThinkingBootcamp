//
//  AlertsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gyen Abubakar on 08/06/2023.
//

import SwiftUI

enum MyError: LocalizedError {
  case networkError
  case validationError(message: String)

  var errorDescription: String? {
    switch self {
    case .networkError:
      return NSLocalizedString("Network error occurred.", comment: "Network Error")
    case let .validationError(message):
      return NSLocalizedString(message, comment: "Validation Error")
    }
  }

  var failureReason: String? {
    switch self {
    case .networkError:
      return NSLocalizedString(
        "The request could not be completed due to a network issue.",
        comment: "Network Failure"
      )
    case .validationError:
      return NSLocalizedString("The input data is invalid.", comment: "Validation Failure")
    }
  }

  var recoverySuggestion: String? {
    switch self {
    case .networkError:
      return NSLocalizedString(
        "Please check your internet connection and try again.",
        comment: "Network Recovery"
      )
    case .validationError:
      return NSLocalizedString(
        "Please review the input data and make sure it is correct.",
        comment: "Validation Recovery"
      )
    }
  }
}

struct AlertsBootcamp: View {
  @State var showAlert = false
  @State var error = MyError.networkError

  var body: some View {
    Button("Trigger Alert") {
      showAlert.toggle()
    }
    .font(.system(size: 20, weight: .bold))
    .foregroundColor(.white)
    .padding()
    .padding(.horizontal)
    .background(.orange)
    .alert("Something just happened!", isPresented: $showAlert) {
//      Button("Confirm") {
//        print(">>> Confirm tapped:", showAlert)
//      }
      Button("Confirm", role: .destructive) {
        print(">>> Cancel tapped:", showAlert)
      }
    }
//    .alert(isPresented: $showAlert, error: error) {
//      Button(action: {
//        print(">>> Cancel tapped:", showAlert)
//      }, label: {Text("Cancel")})
//    }
  }
}

struct AlertsBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    AlertsBootcamp()
  }
}
