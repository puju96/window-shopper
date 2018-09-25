//
//  ViewController.swift
//  windowShopperX
//
//  Created by Admin on 02/07/1940 Saka.
//  Copyright © 1940 Admin. All rights reserved.
//

import UIKit

class mainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencytxtField!
    
    @IBOutlet weak var priceTxt: CurrencytxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hourLbl: UIImageView!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
    
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calBtn.setTitle("calculate", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(mainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calBtn
        priceTxt.inputAccessoryView = calBtn
        
       
    }
    @objc func calculate(){
        if let wagetext = wageTxt.text, let pricetext = priceTxt.text{
            if let wage = Double(wagetext), let price = Double(pricetext){
                view.endEditing(true)
                resultLbl.isHidden = false
                hourLbl.isHidden = false
                resultLbl.text = "\(resultCalculation(forwage: wage, forprice: price))"
            }
        }
        
    }

    func resultCalculation(forwage wage :Double , forprice price : Double) -> Int{
        return Int(ceil(wage / price))
    }
    

    @IBAction func clearButton(_ sender: Any) {
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        wageTxt.text = " "
        priceTxt.text = " "
    }
    
}

