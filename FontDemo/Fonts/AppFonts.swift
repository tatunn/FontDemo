//
//  AppFonts.swift
//  FontDemo
//
//  Created by Nikoloz Tatunashvili on 11/15/18.
//  Copyright © 2018 Nikoloz TatunaSvili. All rights reserved.
//

import UIKit

enum AppFonts: String {
    case light = "HelveticaNeueLTGEO-45Light"
    
    func font(for size: CGFloat) -> UIFont? {
        return UIFont(name: rawValue, size: size)
    }
    
    func upperCasedFont(for size: CGFloat) -> UIFont? {
        return self.font(for: size)?.upperCasedFont
    }
}
