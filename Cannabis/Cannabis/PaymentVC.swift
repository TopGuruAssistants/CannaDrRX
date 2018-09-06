//
//  PaymentVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 06/09/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class PaymentVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var paybttn: UIButton!
    @IBAction func paybttn(_ sender: Any) {
        
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "PaymentCompleteVC") as! PaymentCompleteVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Pain Profile", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
