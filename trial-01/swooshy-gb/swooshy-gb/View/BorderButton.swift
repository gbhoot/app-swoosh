//
//  BorderButton.swift
//  swooshy-gb
//
//  Created by Gurpreet Bhoot on 7/15/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

@IBDesignable

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    func customizeView() {
        layer.borderWidth = 3.0
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        frame.size.height = 50
        
        backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3954409247)
        titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 20)
        setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
//        setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .highlighted)
        
    }

}
