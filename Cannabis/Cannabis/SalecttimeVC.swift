//
//  SalecttimeVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 06/09/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class SalecttimeVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var time = ["9:30 AM","10:00 AM","10:30 AM","11:00AM","11:30 AM","12:00 AM","12:30 PM","01:00 PM","1:30 PM","02:00 PM","2:30 PM","03:00 PM","03:30 PM","04:00 PM"]

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
        return time.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SalectTimeCell", for: indexPath) as! SalectTimeCell
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SalectTimeCell1", for: indexPath) as! SalectTimeCell1
            cell.timelbl.text = time[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      if   indexPath.row != 0 {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "DrAppointmentdetailsVC") as! DrAppointmentdetailsVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Doctors Profile", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
    }
    }
}
