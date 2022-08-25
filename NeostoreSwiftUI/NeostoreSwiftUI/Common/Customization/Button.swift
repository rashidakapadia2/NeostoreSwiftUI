//
//  Button.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import Foundation
import SwiftUI


struct CustomButtonStyle: ButtonStyle {
    
    var isForegroundColorRed: Bool = true
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(isForegroundColorRed ? Color.nBackgroundRed : Color.nWhite)
            .labelStyle(.titleAndIcon)
            .background(isForegroundColorRed ? Color.nWhite : Color.nBackgroundRed)
            .cornerRadius(8)
            .opacity(1)
            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
    }
}
