//
//  GroupDesignApp.swift
//  MedlabMovieIOSInterview
//
//  Created by Poonam Pandey on 28/03/18.
//  Copyright © 2018 Poonam Pandey. All rights reserved.
//

import UIKit

public enum CommonColor {
    
    case grey
    case lightY
    case black
    case offBlack
    
    var rgba: [CGFloat] {
        switch self {
        case .grey: return [200.0 / 255.0, 200.0 / 255.0, 200.0 / 255.0, 1.0]
        case .lightY: return [245.0 / 255.0, 150.0 / 255.0, 80.0 / 255.0, 1.0]
        case .black: return [0.0 / 255.0, 0.0 / 255.0, 0.0 / 255.0, 1.0]
        case .offBlack: return [20.0 / 255.0, 20.0 / 255.0, 20.0 / 255.0, 1.0]
        }
    }
    
    var r: CGFloat { return self.rgba[0] }
    var g: CGFloat { return self.rgba[1] }
    var b: CGFloat { return self.rgba[2] }
    var a: CGFloat { return self.rgba[3] }
    
}

// MARK: - UIColor extension

extension UIColor {
    
    convenience init(commonColor: CommonColor) {
        self.init(red: commonColor.r, green: commonColor.g, blue: commonColor.b, alpha: commonColor.a)
    }
}

// MARK: - TextStyle enum

public enum TextStyle {
    
    case filmRating
    case navigationTitle
    case bodyTinyBold
    case placeholder
    case bodySmall
    case filmDetailTitle
    case bodyDemiBold
    case bodyTiny
    case body
    
    public var font: UIFont {
        
        switch self {
        case .filmRating: return UIFont(name: "AvenirNext-DemiBold", size: 18.0)!
        case .navigationTitle: return UIFont(name: "AvenirNext-DemiBold", size: 16.0)!
        case .bodyTinyBold: return UIFont(name: "AvenirNext-DemiBold", size: 9.0)!
        case .placeholder: return UIFont(name: "AvenirNext-Medium", size: 14.0)!
        case .bodySmall: return UIFont(name: "AvenirNext-Medium", size: 12.0)!
        case .filmDetailTitle: return UIFont(name: "AvenirNext-DemiBold", size: 20.0)!
        case .bodyDemiBold: return UIFont(name: "AvenirNext-DemiBold", size: 14.0)!
        case .bodyTiny: return UIFont(name: "AvenirNext-Medium", size: 9.0)!
        case .body: return UIFont(name: "AvenirNext-Medium", size: 16.0)!
        }
    }
    
    public var color: UIColor {
        
        switch self {
        case .filmRating: return UIColor(commonColor: .lightY)
        case .navigationTitle: return UIColor(commonColor: .grey)
        case .bodyTinyBold: return UIColor(commonColor: .grey)
        case .placeholder: return UIColor(commonColor: .grey)
        case .bodySmall: return UIColor(commonColor: .offBlack)
        case .filmDetailTitle: return UIColor(commonColor: .grey)
        case .bodyDemiBold: return UIColor(commonColor: .grey)
        case .bodyTiny: return UIColor(commonColor: .grey)
        case .body: return UIColor(commonColor: .grey)
        }
    }
}

