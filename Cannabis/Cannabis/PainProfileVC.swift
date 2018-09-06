//
//  PainProfileVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 02/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class PainProfileVC: UIViewController,UITableViewDataSource ,UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        table.delegate = self
        table.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 22
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PainVCCell", for: indexPath) as? PainVCCell
            return cell!
        }
        else if indexPath.row != 21{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "PainVCCell1", for: indexPath) as? PainVCCell1
            return cell!
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PainVCCell2", for: indexPath) as? PainVCCell2
           cell?.strainbttn.addTarget(self, action: #selector(Strain), for: .touchUpInside)
            
            return cell!
        }
        
    }
    @objc func Strain(){
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "StrainVC") as! StrainVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Strains", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
        
    }
}
