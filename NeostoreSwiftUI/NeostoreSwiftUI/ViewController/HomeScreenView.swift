//
//  HomeScreenView.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import SwiftUI

struct HomeScreenView: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            VStack{
//                LazyVGrid(columns: arrCount, content: {
//                    Text("Yay")
//                })
            }
        }
        .navigationTitle("NeoSTORE")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "line.3.horizontal")
                }

            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "magnifyingglass")
                }

            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
