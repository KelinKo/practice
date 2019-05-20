//
//  ProductDetailVC.swift
//  practice
//
//  Created by kelinko on 2019/5/20.
//  Copyright © 2019 kelinko. All rights reserved.
//

import UIKit

class ProductDetailVC: UIViewController {
    
    var something:Food!

    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let something = something{
            self.title = something.name
            productName.text = "產品名稱:\t\(something.name!)"
            productPrice.text = "價格:\t\(something.price!)元"
            detailImage.image = something.image
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
