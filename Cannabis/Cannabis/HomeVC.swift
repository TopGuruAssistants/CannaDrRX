//
//  HomeVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 02/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
table.delegate = self
        table.dataSource = self
        self.table.rowHeight = 116
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
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
 navigationItem.backBarButtonItem = UIBarButtonItem(title: "Explore doctors", style: .plain, target: nil, action: nil)
            self.navigationController?.pushViewController(VC, animated: true)
        }
        if indexPath.row == 2 {
            let VC  = self.storyboard?.instantiateViewController(withIdentifier: "StrainVC") as! StrainVC
 navigationItem.backBarButtonItem = UIBarButtonItem(title: "Strains", style: .plain, target: nil, action: nil)
            self.navigationController?.pushViewController(VC, animated: true)
        }
//        if indexPath.row == 3 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "homecell", for: indexPath) as? HomeVCCell
//        }
//        if indexPath.row == 4 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "homecell", for: indexPath) as? HomeVCCell
//        }
    }
}
