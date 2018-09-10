//
//  PurchaseHistoryVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 02/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class PurchaseHistoryVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

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
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "purchasehistorycell", for: indexPath) as? purchasehistorycell
        
        cell?.purchasedetail.addTarget(self, action: #selector(purchasehistory), for: .touchUpInside)
        return cell!
    }
    
    @ objc func purchasehistory(){
        
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "PaymentCompleteVC") as! PaymentCompleteVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Payment", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
    }

}
