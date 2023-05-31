//
//  ReactiveListener.swift
//  NeostoreSwiftUI
//
//  Created by Apple on 31/05/23.
//

import Foundation

//MARK:- Response using generics
enum APIResponse<T> {
    case success(value: T)
    case failure(error: Error)
}
