//
//  OrderDataModels.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import Foundation
import SwiftUI

class Order: ObservableObject {
    init(status: Int, message: String, usermsg: String){
        self.status = status
        self.message = message
        self.user_msg = usermsg
    }
    
    @Published var status: Int
    @Published var message: String
    @Published var user_msg: String
}
