//
//  Order.swift
//  practice
//
//  Created by kelinko on 2019/5/19.
//  Copyright © 2019 kelinko. All rights reserved.
//

import Foundation

struct Order:Codable{
    var name:String
    var side:String
    var drink:String
}
struct OrderData:Codable {
    var data:[Order]
}
