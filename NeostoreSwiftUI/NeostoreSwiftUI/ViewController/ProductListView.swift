//
//  ProductListView.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 10/08/22.
//

import SwiftUI

struct ProductListView: View {
    let disciplines = ["statue", "mural", "plaque", "statusil"]
    
    var body: some View {
        NavigationView {
            List(disciplines, id: \.self) { discipline in
                NavigationLink(destination: ProductDetailView()) {
                    HStack{
                        Image(systemName: "lock")
                        VStack{
                            Text(discipline)
                            Text(discipline)
                        }
                    }
                }
            }
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
