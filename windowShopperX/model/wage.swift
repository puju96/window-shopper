//
//  wage.swift
//  windowShopperX
//
//  Created by Admin on 03/07/1940 Saka.
//  Copyright © 1940 Admin. All rights reserved.
//

import Foundation
class wage{
    class func calc(forwage wage : Double , forprice price : Double) -> Int{
        return Int(ceil(price / wage))
    }
}
