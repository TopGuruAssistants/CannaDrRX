//
//  ProfileVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 02/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var sidemenu: UIBarButtonItem!
    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
table.dataSource = self
        table.delegate = self
        self.table.rowHeight = 116
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let sidemenu = UIBarButtonItem(image: UIImage(named: "small-menu"), style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem  = sidemenu
        
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(back))
        self.navigationItem.leftBarButtonItem = newBackButton
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "personalProfileVcCell", for: indexPath) as? personalProfileVcCell
            return cell!
        }
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "healthprifilecell", for: indexPath) as? healthprifilecell
            return cell!
        }
        else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "painprofilecell", for: indexPath) as? painprofilecell
            return cell!
        }
        else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "recomndedcell", for: indexPath) as? recomndedcell
            return cell!
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "purchasecell", for: indexPath) as? purchasecell
            return cell!
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let VC  = self.storyboard?.instantiateViewController(withIdentifier: "PersonalProfileVC") as! PersonalProfileVC
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "Personal profile", style: .plain, target: nil, action: nil)
            self.navigationController?.pushViewController(VC, animated: true)
        }
                if indexPath.row == 1 {
                    let VC  = self.storyboard?.instantiateViewController(withIdentifier: "HealthProfileVC") as! HealthProfileVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Health profile", style: .plain, target: nil, action: nil)
                    self.navigationController?.pushViewController(VC, animated: true)
                }
                if indexPath.row == 2 {
                    let VC  = self.storyboard?.instantiateViewController(withIdentifier: "PainProfileVC") as! PainProfileVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Pain Profile", style: .plain, target: nil, action: nil)
                    self.navigationController?.pushViewController(VC, animated: true)
                }
        //        if indexPath.row == 3 {
        //            let cell = tableView.dequeueReusableCell(withIdentifier: "homecell", for: indexPath) as? HomeVCCell
        //        }
                if indexPath.row == 4 {
                   
                    let VC  = self.storyboard?.instantiateViewController(withIdentifier: "PurchaseHistoryVC") as! PurchaseHistoryVC
                    navigationItem.backBarButtonItem = UIBarButtonItem(title: "Purchase History", style: .plain, target: nil, action: nil)
                    self.navigationController?.pushViewController(VC, animated: true)
                }
    }
   

}
