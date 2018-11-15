//
//  UIFont.swift
//  FontDemo
//
//  Created by Nikoloz Tatunashvili on 11/15/18.
//  Copyright © 2018 Nikoloz TatunaSvili. All rights reserved.
//

import UIKit

extension UIFont {
    
    var upperCasedFont: UIFont {
        let originalDesc = self.fontDescriptor
        let features:[UIFontDescriptor.AttributeName: Any] = [
            UIFontDescriptor.AttributeName.featureSettings : [
                [
                    UIFontDescriptor.FeatureKey.featureIdentifier: kCaseSensitiveLayoutType,
                    UIFontDescriptor.FeatureKey.typeIdentifier: kCaseSensitiveLayoutOnSelector
                ]
            ]
        ]
        let newDesc = originalDesc.addingAttributes(features)
        return UIFont(descriptor: newDesc, size: pointSize)
    }
}


public func printFontNames() {
    for family in UIFont.familyNames {
        print("\(family)")
        for name in UIFont.fontNames(forFamilyName: family) {
            print("   \(name)")
        }
    }
}
