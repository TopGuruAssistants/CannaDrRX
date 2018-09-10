//
//  ReferFriendVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 08/09/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class ReferFriendVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sidemenu = UIBarButtonItem(image: UIImage(named: "small-menu"), style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem  = sidemenu
        
        let backbutton = UIButton(type: .custom)
        backbutton.tintColor = UIColor.white
        backbutton.setImage(UIImage(named: "white-back"), for: .normal) // Image can be downloaded from here below link
        backbutton.setTitle("Refer A Friend", for: .normal)
        backbutton.setTitleColor(backbutton.tintColor, for: .normal) // You can change the TitleColor
        backbutton.addTarget(self, action: #selector(back), for: .touchUpInside)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backbutton)
        if revealViewController() != nil {
            sidemenu.target = revealViewController()
            sidemenu.action = "rightRevealToggle:"
            //  sidemenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
        }
        if revealViewController() != nil {
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            
        }
        navigationController?.navigationBar.barTintColor = UIColor(red: 102/255, green: 95/255, blue: 136/255, alpha: 1.0)
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    @objc func back(){
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: HomeVC.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var codetxt: CustomFloatingTextfield!
    @IBAction func howitworkbttn(_ sender: Any) {
    
    
    let VC  = self.storyboard?.instantiateViewController(withIdentifier: "HowitworkVC") as! HowitworkVC
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "Payment", style: .plain, target: nil, action: nil)
    self.navigationController?.pushViewController(VC, animated: true)
    }
    @IBAction func invitefrnds(_ sender: Any) {
    }
}
