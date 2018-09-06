//
//  priscriptionVCCell.swift
//  Cannabis
//
//  Created by Raurnet solutions on 23/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class priscriptionVCCell: UITableViewCell {

    @IBOutlet weak var shippingadd: UILabel!
    @IBOutlet weak var billinglbl: UILabel!
    @IBOutlet weak var addbilingaddress: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
class priscriptionVCCell1: UITableViewCell {
    
    @IBOutlet weak var Paymentinfobttn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
