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
        // Do any additional setup after loading the view.
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
