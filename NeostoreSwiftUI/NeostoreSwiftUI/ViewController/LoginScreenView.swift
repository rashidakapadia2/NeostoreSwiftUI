//
//  ContentView.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 25/07/22.
//

import SwiftUI

struct LoginScreenView: View {
    @StateObject private var observed = Observe()
    
    @State var isActive: Bool = true
    @State var email: String = ""
    @State var password: String = ""
    
    func sendLoginData() {
        observed.userLogin.email = self.email
        observed.userLogin.password = self.password
        observed.loginAttempt(){
            print("TRY")
        }
    }
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.nBackgroundRed
                VStack{
                    Spacer(minLength: 2)
                    Text("NeoStore").foregroundColor(.white).font(.custom("", size: 45))
                    Spacer()
                    TextField("Email", text: $email)
                        .padding(EdgeInsets(top: 5, leading: 33, bottom: 10, trailing: 33))
                        .textFieldStyle(CustomTextFieldStyle())
                    TextField("Password",text: $password)
                        .padding(EdgeInsets(top: 5, leading: 33, bottom: 13, trailing: 33))
                        .textFieldStyle(CustomTextFieldStyle())
                    Button {
                        print("Button Clicked")
                        //completion handler to send info
                        sendLoginData()
                    } label: { Text("LOGIN")
                            .padding(EdgeInsets(top: 10, leading: UIScreen.main.bounds.width/2 - 66 , bottom: 10, trailing: UIScreen.main.bounds.width/2 - 66))
                    }.buttonStyle(CustomButtonStyle())
                    
                    NavigationLink(destination: ForgotPasswordView(emailTxt: "")) {
                        Text("Forgot password?")
                    }
                    //                Button {
                    //                    print("Button Clicked")
                    //
                    //                } label: {
                    //                    Text("Forgot password?")
                    //                }.buttonStyle(CustomButtonStyle(isForegroundColorRed: false))
                    Spacer()
                    NavigationLink(destination: HomeScreenView()) {
                        Text("NeoSTORE")
                    }
                    HStack{
                        Button {
                            print("Button Clicked")
                        } label: {
                            HStack{
                                Text("DONT HAVE AN ACCOUNT?")
                                Spacer()
                                Image(systemName: "plus")
                                    .tint(Color.nWhite)
                            }
                        }
                        .buttonStyle(CustomButtonStyle(isForegroundColorRed: false))
                    }
                }
            }.navigationBarHidden(true)
        }
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginScreenView(email: "Rashida Kapadia", password: "asdfghjk")
                .previewInterfaceOrientation(.portrait)
        }
    }
}
