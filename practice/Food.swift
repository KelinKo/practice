//
//  Food.swift
//  practice
//
//  Created by kelinko on 2019/5/19.
//  Copyright © 2019 kelinko. All rights reserved.
//

import Foundation
import UIKit

class Food {
    var name: String!
    var price: Int!
    var image: UIImage?
    
    init(name: String, price: Int, image: UIImage) {
        self.name = name
        self.price = price
        self.image = image
    }
}
