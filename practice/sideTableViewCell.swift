//
//  sideTableViewCell.swift
//  practice
//
//  Created by kelinko on 2019/5/19.
//  Copyright © 2019 kelinko. All rights reserved.
//

import UIKit

class sideTableViewCell: UITableViewCell {

   
    @IBOutlet weak var sideResult: UILabel!
    @IBOutlet weak var sideImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
