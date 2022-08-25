//
//  UserDataModels.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import Foundation
import SwiftUI

//class UserLogin: ObservableObject {
//
//    init(email: String, password: String) {
//        self.email = email
//        self.password = password
//    }
//
//    @Published var email: String?
//    @Published var password: String?
//}

struct UserLoginModel: Identifiable {
    var id: Int
    var email: String
    var password: String
    
    init(id: Int = 0,email: String? = nil, password: String? = nil){
        self.id = id
        self.email = email ?? ""
        self.password = password ?? ""
    }
}

struct UserDetail: Identifiable {
    var id: UUID
    var status: Int
    var data: UserData
    var msg: String
    var user_msg: String
}

struct UserData: Identifiable {
    var id: Int
    var role_id: Int
    var username: String
}
