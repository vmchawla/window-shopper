//
//  wage.swift
//  window-shopper
//
//  Created by Varun Chawla on 22/07/17.
//  Copyright © 2017 Varun Chawla. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price:Double) -> Int {
        return Int(ceil(price/wage))
    }
}
