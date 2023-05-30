//
//  CartDataModels.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import Foundation
import SwiftUI

struct RegisterModel: Hashable, Codable, Identifiable {
    let id: UUID
    let first_name: String?
    let last_name: String?
    let email: String?
    let password: String?
    let confirm_password: String?
    let gender: String?
    let phone_no: String?
}

struct LoginModel: Hashable, Codable, Identifiable {
    let id: UUID
    let status: Bool
    let data: LoginResponseModel?
    let message: String?
    let user_msg: String?
}

struct LoginResponseModel: Hashable, Codable, Identifiable {
    let id: UUID
    let email: String
    let password: String
}

struct GenericResponseModel: Hashable, Codable, Identifiable {
    let id: UUID
    let status: Bool
    let message: String?
    let user_msg: String?
}
