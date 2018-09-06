//
//  StrainVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 02/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class StrainVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

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
        let cell =  table.dequeueReusableCell(withIdentifier: "StrainVcCell", for: indexPath) as? StrainVcCell
        
        
        return cell!
        }else{
            
            let cell =  table.dequeueReusableCell(withIdentifier: "StrainVcCell1", for: indexPath) as? StrainVcCell1
            cell?.addtocartbttn.addTarget(self, action: #selector(addtocart), for: .touchUpInside)
            
            return cell!
            
        }
    }
    
    @objc func addtocart(){
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "PriscriptionVC") as! PriscriptionVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Payment", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
        
    }
   // func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
   // }

}
