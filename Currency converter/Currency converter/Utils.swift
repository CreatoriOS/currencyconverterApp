//
//  Utils.swift
//  Currency converter
//
//  Created by Zhansaya Bortanova on 19/01/2023.
//

import Foundation

extension String{
    static let numberFormatter = NumberFormatter()
    var doubleValue: Double{
        String.numberFormatter.decimalSeparator = "."
        if let result = String.numberFormatter.number(from: self){
            return result.doubleValue
        }else{
            String.numberFormatter.decimalSeparator = ","
            if let result = String.numberFormatter.number(from: self){
                return result.doubleValue
        }
    }
        return 0
}
}
