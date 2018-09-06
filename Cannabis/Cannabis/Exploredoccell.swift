//
//  Exploredoccell.swift
//  Cannabis
//
//  Created by Raurnet solutions on 02/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class Exploredoccell: UITableViewCell {

    @IBOutlet weak var profileimage: UIImageView!
    @IBOutlet weak var viewprofile: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
      
        
        self.profileimage.layer.cornerRadius = self.profileimage.frame.size.width / 2
        self.profileimage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
class Exploredocfiltercell: UITableViewCell {
    
    @IBOutlet weak var filtertext: CustomFloatingTextfield!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
