//
//  UserDefaults.swift
//  NeostoreSwiftUI
//
//  Created by Apple on 31/05/23.
//

import Foundation
import SwiftUI

extension UserDefaults {
    func getUserToken() -> String? {
        return UserDefaults.standard.string(forKey: UserDefaultKeys.userToken.rawValue)
    }
    
    func isUserLoggedIn() -> Bool {
        return UserDefaults.standard.bool(forKey: UserDefaultKeys.isLoggedIn.rawValue)
    }
    
    func logOut() {
        UserDefaults.standard.removeObject(forKey: UserDefaultKeys.userToken.rawValue)
    }
    
    func setUserToken(token: String) {
        UserDefaults.standard.set(token, forKey: UserDefaultKeys.userToken.rawValue)
    }
}

enum UserDefaultKeys: String {
    case userToken
    case isLoggedIn
}

