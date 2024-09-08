//
//  StringExtension.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 31/08/24.
//

import Foundation

extension String {
    var localized: String{
        return NSLocalizedString(self, comment: "")
    }
    
    func localized(WithComment comment : String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
}

//Use
//label.text = "auth.firstName.title".localised


