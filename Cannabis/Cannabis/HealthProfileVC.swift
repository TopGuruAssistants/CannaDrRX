//
//  HealthProfileVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 02/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class HealthProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func painprofile(_ sender: Any) {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "PainProfileVC") as! PainProfileVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Pain profile", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
    }
    

}
