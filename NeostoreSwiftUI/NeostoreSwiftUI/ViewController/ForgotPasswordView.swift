//
//  ForgotPasswordView.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var emailTxt: String
    
    var body: some View {
        ZStack{
            Color.nBackgroundRed
            VStack{
                Text("NeoSTORE").foregroundColor(Color.nWhite)
                Spacer()
                TextField(text: $emailTxt) {
                    
                }
                .textFieldStyle(CustomTextFieldStyle())
                Button {
                    print("Button Clicked")
                } label: {
                    Text("SEND").padding(EdgeInsets(top: 10, leading: 33, bottom: 10, trailing: 33))
                }
                .buttonStyle(CustomButtonStyle())
                Spacer()
            }
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView(emailTxt: "sdfghjk")
    }
}
