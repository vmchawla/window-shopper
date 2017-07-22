//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Varun Chawla on 22/07/17.
//  Copyright © 2017 Varun Chawla. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size:CGFloat = 20
        print(frame)
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - (size/2), width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7996808979)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2478818222)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }


    

}
