//
//  RegisterViewModel.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import Foundation
import SwiftUI

protocol RegisterViewModelType {
    
}

class RegisterViewModel: ObservableObject {
//    @Published var fullNameTxt: String
    @Published var emailTxt: String
//    @Published var passwd: String
//    @Published var confPass: String
//    @Published var number: String
//    @Published var firstName: String
//    @Published var lastName: String
    
    init(email: Published<String>) {
        _emailTxt = email
    }
    
    func validationTextField() -> Bool {
        if emailTxt.isEmpty {
            print("false")
            return false
        }
        else {
            print("true")
            return true
        }
    }
}

