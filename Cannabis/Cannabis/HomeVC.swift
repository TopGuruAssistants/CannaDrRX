//
//  HomeVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 08/09/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var sidemenu: UIBarButtonItem!
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
      //  self.table.rowHeight = 116
        
        // SideMenuManager = customSideMenuManager
        // Do any additional setup after loading the view.
        
        // setupSideMenu()
        // setDefaults()
        addLeftBarIcon()
        if revealViewController() != nil {
            sidemenu.target = revealViewController()
            sidemenu.action = "rightRevealToggle:"
          //  sidemenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
        }
        if revealViewController() != nil {
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())

        }
//        if revealViewController() != nil{
//            sidemenu.target = revealViewController()
//            sidemenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
//            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
//        }
    }
    func addLeftBarIcon() {
        
        let logoImage = UIImage.init(named: "appUI-2Home")
        let logoImageView = UIImageView.init(image: logoImage)
        logoImageView.frame = CGRect(x:0.0,y:0.0, width:180,height:60)
        logoImageView.contentMode = .scaleAspectFit
        let imageItem = UIBarButtonItem.init(customView: logoImageView)
        let widthConstraint = logoImageView.widthAnchor.constraint(equalToConstant: 180)
        let heightConstraint = logoImageView.heightAnchor.constraint(equalToConstant: 60)
        heightConstraint.isActive = true
        widthConstraint.isActive = true
        navigationItem.leftBarButtonItem =  imageItem
    }
    @IBAction func sidemenu(_ sender: Any) {
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.barTintColor = UIColor.white
        // Hide the navigation bar on the this view controller
        //  self.navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.barTintColor = UIColor(red: 102/255, green: 95/255, blue: 136/255, alpha: 1.0)
        // Hide the navigation bar on the this view controller
        //  self.navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeVCCell", for: indexPath) as? HomeVCCell
            return cell!
        }
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "exploredoctorcell", for: indexPath) as? exploredoctorcell
            return cell!
        }
        else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "straincell", for: indexPath) as? straincell
            return cell!
        }
        else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "prescriptioncell", for: indexPath) as? prescriptioncell
            return cell!
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "referfriendcell", for: indexPath) as? referfriendcell
            return cell!
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let VC  = self.storyboard?.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "Profile", style: .plain, target: nil, action: nil)
            self.navigationController?.pushViewController(VC, animated: true)
        }
        if indexPath.row == 1 {
            let VC  = self.storyboard?.instantiateViewController(withIdentifier: "ExploreDocVC") as! ExploreDocVC
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
            self.navigationController?.pushViewController(VC, animated: true)
        }
        if indexPath.row == 2 {
            let VC  = self.storyboard?.instantiateViewController(withIdentifier: "StrainVC") as! StrainVC
           navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
            self.navigationController?.pushViewController(VC, animated: true)
        }
                if indexPath.row == 3 {
                    let VC  = self.storyboard?.instantiateViewController(withIdentifier: "Priscription") as! PriscriptionsVC
                   navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
                    self.navigationController?.pushViewController(VC, animated: true)
                }
                if indexPath.row == 4 {
                   
                    let VC  = self.storyboard?.instantiateViewController(withIdentifier: "ReferFriendVC") as! ReferFriendVC
                    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
                    self.navigationController?.pushViewController(VC, animated: true)
                }
    }
}
