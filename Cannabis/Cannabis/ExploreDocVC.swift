//
//  ExploreDocVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 02/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class ExploreDocVC: UIViewController,UITableViewDataSource ,UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
table.delegate = self
        table.dataSource = self
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Exploredocfiltercell", for: indexPath) as? Exploredocfiltercell
            return cell!
    }
    
    else {
     let cell = tableView.dequeueReusableCell(withIdentifier: "Exploredoccell", for: indexPath) as? Exploredoccell
            cell?.viewprofile.addTarget(self, action: #selector(viewprofile), for: .touchUpInside)
        
            return cell!
    }
    
}
    @objc func viewprofile() {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "DrProfileVC") as! DrProfileVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Doctors Profile", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
        
    }
}
