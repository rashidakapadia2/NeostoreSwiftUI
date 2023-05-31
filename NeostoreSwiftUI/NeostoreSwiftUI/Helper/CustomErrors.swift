//
//  CustomErrors.swift
//  NeostoreSwiftUI
//
//  Created by Apple on 31/05/23.
//

import Foundation

enum CustomErrors: Error {
    case noInternet
    case noData
}

extension CustomErrors: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .noInternet:
            return "Could not connect to the internet."
        case .noData:
            return "No data Available"
        }
    }
}
