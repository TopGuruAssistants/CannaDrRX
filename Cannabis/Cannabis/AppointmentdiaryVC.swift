//
//  AppointmentdiaryVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 06/09/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class AppointmentdiaryVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "AppointmentDiaryCell", for: indexPath) as! AppointmentDiaryCell
            return cell
        }else {
             let cell = tableView.dequeueReusableCell(withIdentifier: "AppointmentDiaryCell1", for: indexPath) as! AppointmentDiaryCell1
            return cell
        }
        
    }

}
