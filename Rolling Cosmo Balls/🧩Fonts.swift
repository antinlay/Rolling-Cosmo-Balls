//
//  🧩Fonts.swift
//  PharaohsSecrets
//
//  Created by Janiece Eleonour on 17.07.2024.
//

import SwiftUI

//let alumniSans: StaticString = "AlumniSans"

enum LeagueGothic: String {
    case thin = "Thin"
    case extraLight = "ExtraLight"
    case light = "Light"
    case regular = "Regular"
    case medium = "Medium"
    case semibold = "SemiBold"
    case bold = "Bold"
    case extraBold = "ExtraBold"
    case black = "Black"
}

enum AlumniSansWeight: String {
    case thin = "Thin"
    case extraLight = "ExtraLight"
    case light = "Light"
    case regular = "Regular"
    case medium = "Medium"
    case semibold = "SemiBold"
    case bold = "Bold"
    case extraBold = "ExtraBold"
    case black = "Black"
}

enum CabinWeight: String {
    case thin = "Thin"
    case extraLight = "ExtraLight"
    case light = "Light"
    case regular = "Regular"
    case medium = "Medium"
    case semibold = "SemiBold"
    case bold = "Bold"
    case extraBold = "ExtraBold"
    case black = "Black"
}

enum LemonWeight: String {
    case thin = "Thin"
    case extraLight = "ExtraLight"
    case light = "Light"
    case regular = "Regular"
    case medium = "Medium"
    case semibold = "SemiBold"
    case bold = "Bold"
    case extraBold = "ExtraBold"
    case black = "Black"
}

extension Font {
    static func cabin(_ weight: CabinWeight, size: CGFloat, isItalic: Bool = false) -> Font {
        Font.custom("Cabin-\(weight.rawValue)" + (isItalic ? "Italic" : "") , size: size)
    }
    
    static func alumniSans(_ weight: AlumniSansWeight, size: CGFloat, isItalic: Bool = false) -> Font {
        Font.custom("AlumniSans-\(weight.rawValue)" + (isItalic ? "Italic" : "") , size: size)
    }
    
    static func leagueGothic(_ weight: LeagueGothic, size: CGFloat, isItalic: Bool = false) -> Font {
        Font.custom("LeagueGothic-\(weight.rawValue)" + (isItalic ? "Italic" : "") , size: size)
    }
    
    static func lemon(_ weight: LemonWeight, size: CGFloat, isItalic: Bool = false) -> Font {
        Font.custom("Lemon-\(weight.rawValue)" + (isItalic ? "Italic" : "") , size: size)
    }
}
