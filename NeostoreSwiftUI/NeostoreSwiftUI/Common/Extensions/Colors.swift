//
//  Colors.swift
//  NeostoreSwiftUI
//
//  Created by Neosoft1 on 03/08/22.
//

import Foundation
import SwiftUI


extension Color {
    static var nWhite: Color {
        return Color(red: 255/255, green: 255/255, blue: 255/255)
    }
    static var nOffWhite: Color {
        return Color(red: 237/255, green: 237/255, blue: 237/255)
    }
    @nonobjc static var nBackgroundRed: Color {
        return Color(red: 233/255, green: 28/255, blue: 26/255)
    }
    static var nGray: Color {
       return Color(red: 79/255, green: 79/255, blue: 79/255)
    }
}

enum Colors: String {
    case nWhite = "FFFFFF"
    case nOffWhite = "EDEDED"
    case nYellow = "FE3F3F"
    case nBackgroundRed = "E91C1A"
    case nTextRed = "FE4040"
    case nBtnRed = "DB1514"
    case nGray = "4F4F4F"
    case nBtnGray = "7F7F7F"
    case nGrey = "262626"
    
    var tint: CGColor {
        switch self {
        case .nWhite:
            return CGColor(red: 255, green: 255, blue: 255, alpha: 1)
        case .nOffWhite:
            return CGColor(red: 237, green: 237, blue: 237, alpha: 1)
        case .nYellow:
            return CGColor(red: 254, green: 63, blue: 63, alpha: 1)
        case .nBackgroundRed:
            return CGColor(red: 233, green: 28, blue: 26, alpha: 1)
        case .nTextRed:
            return CGColor(red: 254, green: 64, blue: 64, alpha: 1)
        case .nBtnRed:
            return CGColor(red: 219, green: 21, blue: 20, alpha: 1)
        case .nGray:
            return CGColor(red: 79, green: 79, blue: 79, alpha: 1)
        case .nBtnGray:
            return CGColor(red: 127, green: 127, blue: 127, alpha: 1)
        case .nGrey:
            return CGColor(red: 38, green: 38, blue: 38, alpha: 1)
        }
    }
}
