//
//  LoginScreenExtension.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 04/08/22.
//

import Foundation
import SwiftUI

extension LoginScreenView {
    class Observe: ObservableObject {
        @Published var userLogin = UserLoginModel()
        
        func loginAttempt(completion: @escaping generalClosure)  {
            print(userLogin.email)
            print("ASDFGHJKL")
            print(userLogin.password)
            completion()
        }
    }
}

