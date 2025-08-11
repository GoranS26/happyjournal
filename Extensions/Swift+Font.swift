//
//  Swift+Font.swift
//  JournalApp
//
//  Created by Goran Saric on 11.08.25.
//

import SwiftUI


extension Font {
    
    static func bangers(size: CGFloat = 30) -> Font {
        return Font.custom("Bangers-Regular", size: size)
    }
    static func smallCaps(size: CGFloat) -> Font{
        return Font.custom("MarkerFelt-Wide", size: size)
    }
    static func chalk(size: CGFloat) -> Font {
        return Font.custom( "ChalkboardSE-Bold", size: size)
    }
    
}

