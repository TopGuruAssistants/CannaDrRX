//
//  ViewController.swift
//  Cannabis
//
//  Created by Raurnet solutions on 01/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func SignIN(_ sender: Any) {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "LoginVCViewController") as! LoginVCViewController
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
    @IBAction func signUp(_ sender: Any) {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}

