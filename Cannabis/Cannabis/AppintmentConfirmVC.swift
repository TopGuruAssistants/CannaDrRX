//
//  AppintmentConfirmVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 06/09/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class AppintmentConfirmVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Confirmsave(_ sender: Any) {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "DrApptConfirmationVC") as! DrApptConfirmationVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Doctors Profile", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
    }

}
