//
//  RegisterScreenView.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import SwiftUI

struct RegisterScreenView: View {
    @State var fullNameTxt: String
    @State var emailTxt: String
    @State var passwd: String
    @State var confPass: String
    @State var gender: Bool = true
    @State var number: String
    @State var firstName: String
    @State var lastName: String
    
    
    var body: some View {
        ZStack{
            VStack{
                Text("NeoSTORE")
                //Spacer()
                TextField(text: $firstName) {
                    
                }
                TextField(text: $lastName) {
                    
                }
                TextField(text: $emailTxt) {
                    
                }
                TextField(text: $passwd) {
                    
                }
                TextField(text: $confPass) {
                    
                }
                HStack{
                    Text("Gender")
                    Label("Male", systemImage: "circle.fill")
                    Label("Female", systemImage: "circle")
                }
                TextField(text: $number) {
                    
                }
                Button {
                    print("./......")
                } label: {
                    Label("I agree to the Terms and Conditions", systemImage: "square.inset.filled")
                }
                //Spacer()
                Button {
                    
                } label: {
                    Text("REGISTER")
                }
            }
        }
    }
}

//struct RegisterScreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        RegisterScreenView(fullNameTxt: "Rash", emailTxt: "Kapadia", passwd: "Tdfghj", confPass: "vbnm", number: "0000000000", firstName: "FGHJ", lastName: "zcvbnm", registerViewModel: RegisterViewModel(email: ))
//    }
//}
