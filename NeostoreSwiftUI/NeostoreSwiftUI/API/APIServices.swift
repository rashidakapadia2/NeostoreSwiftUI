//
//  APIServices.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import Foundation
import SwiftUI

typealias generalClosure = () -> ()
typealias resultClosure = (Result<Any, Error>) -> ()
typealias anyDict = [String: Any]
typealias stringDict = [String: String]

enum APIServices {
    
    case userLogin
    case userRegistration
    case getUserPass
    case setUserPass
    case setUserDetail
    case getUserDetail
    
    case getProductList
    case getProductDetail
    case setProductRating
    
    case addToCart
    case editCart
    case deleteCart
    case getCartList
    
    case placeOrder
    case getOrderList
    case getOrderDetail
    
    
    var baseURL: String {
        return "http://staging.php-dev.in:8844/trainingapp/api/"
    }
    
    
    var httpMethod: String {
        switch self {
        case .getUserDetail, .getProductList, .getProductDetail, .getCartList, .getOrderList, .getOrderDetail :
            return "GET"
        default:
            return "POST"
        }
    }
}
