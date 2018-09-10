//
//  LoginVCViewController.swift
//  Cannabis
//
//  Created by Raurnet solutions on 01/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class LoginVCViewController: UIViewController {

    @IBOutlet weak var Passwordtxt: CustomFloatingTextfield!
    @IBOutlet weak var Emailtxt: CustomFloatingTextfield!
    override func viewDidLoad() {
        super.viewDidLoad()
self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.title = "SIGN IN"
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func termsofuse(_ sender: Any) {
    }
    @IBOutlet weak var termsofuse: UIButton!
    
    @IBAction func privacy(_ sender: Any) {
    }
    @IBAction func signup(_ sender: Any) {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
    }
    @IBAction func forgotpassword(_ sender: Any) {
    }
    @IBAction func signin(_ sender: Any) {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "SWRevealViewController")
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        //self.navigationController?.present(UIViewController , animated: true)
        self.present(VC!, animated: true)
        //self.navigationController?.pushViewController(VC!, animated: true)
    }

}
