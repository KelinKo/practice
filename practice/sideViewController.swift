//
//  sideViewController.swift
//  practice
//
//  Created by kelinko on 2019/5/20.
//  Copyright © 2019 kelinko. All rights reserved.
//

import UIKit

class sideViewController: UIViewController {
    var something:Side!
    @IBOutlet weak var sideImage: UIImageView!
    
    @IBOutlet weak var lbName: UILabel!
    
    
    @IBOutlet weak var lbPrice: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let something = something{
            
            self.title = something.name
            lbName.text = "產品名稱:\t\(something.name!)"
            lbPrice.text = "價格:\t\(something.price!)元"
            sideImage.image = something.image
            
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
