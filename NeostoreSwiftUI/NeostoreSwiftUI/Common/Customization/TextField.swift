//
//  TextField.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import Foundation
import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
        func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding(10)
                .border(Color.nWhite, width: 1)
                .background(Color.nBackgroundRed)
                .foregroundColor(Color.nWhite)
                .cornerRadius(0)
        }
}
