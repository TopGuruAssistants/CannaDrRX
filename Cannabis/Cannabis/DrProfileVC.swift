//
//  DrProfileVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 06/09/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class DrProfileVC: UIViewController,UITableViewDataSource,UITableViewDelegate{
   
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
table.delegate = self
        table.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DRprofileCell", for: indexPath) as! DRprofileCell
        return cell
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "DRprofileCell1", for: indexPath) as! DRprofileCell1
            cell.appointmentbttn.addTarget(self, action: #selector(setappointment), for: .touchUpInside)
            return cell
            
        }
    }
    
    @objc func setappointment(){
//        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "PickdateVC") as! PickdateVC
//        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Pain Profile", style: .plain, target: nil, action: nil)
//        self.navigationController?.pushViewController(VC, animated: true)
        
    }
}
