//
//  DrAppointmentdetailsVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 08/09/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class DrAppointmentdetailsVC: UIViewController {

    @IBAction func Confirmsave(_ sender: Any) {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "AppintmentConfirmVC") as! AppintmentConfirmVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Doctors Profile", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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