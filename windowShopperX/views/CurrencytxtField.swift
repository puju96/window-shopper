//
//  CurrencytxtField.swift
//  windowShopperX
//
//  Created by Admin on 03/07/1940 Saka.
//  Copyright © 1940 Admin. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencytxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size :CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height)/2 - size/2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        currencyLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        currencyLbl.layer.cornerRadius = 3.0
        currencyLbl.textAlignment = .center
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }
    
    override func prepareForInterfaceBuilder() {
    customizesView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizesView()
       
    }
    func customizesView(){
            backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2463077911)
            layer.cornerRadius = 5.0
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            textAlignment = .center
            clipsToBounds = true
            
            if let p = placeholder {
                let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                attributedPlaceholder = place
            }        }
        
    

}
