//
//  PriscriptionVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 02/08/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class PriscriptionVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

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
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell =  table.dequeueReusableCell(withIdentifier: "priscriptionVCCell", for: indexPath) as? priscriptionVCCell
            if indexPath.row == selectedIndex {
                cell?.billinglbl.isHidden = false
                cell?.shippingadd.isHidden = false
               // let imagee = UIImage(named: "expand-arrow-up") as UIImage?
              //  cell.downarroe.image = imagee
                
            }else {
                cell?.billinglbl.isHidden = true
                cell?.shippingadd.isHidden = true
               // let imagee = UIImage(named: "expand-arrow-down") as UIImage?
              //  cell.downarroe.image = imagee
                
            }
            cell?.addbilingaddress.addTarget(self, action: #selector(animate), for: .touchUpInside)
            return cell!
        }else{
            
            let cell =  table.dequeueReusableCell(withIdentifier: "priscriptionVCCell1", for: indexPath) as? priscriptionVCCell1
            
            cell?.Paymentinfobttn.addTarget(self, action: #selector(paymentbttn), for: .touchUpInside)
            return cell!
            
        }
    }
    
    @objc func paymentbttn() {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Pain Profile", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(VC, animated: true)
    
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            if indexPath.row == selectedIndex {
            return 712
            
        }else {
            
            return 500
        }
        
        } else {
            return 60
        }
    }
    
    var selectedIndex : NSInteger! = -1 //Delecre this global
    @objc func animate(){
        var indexPath = IndexPath(row: 0, section: 0)
        let cell = self.table.cellForRow(at: indexPath) as! priscriptionVCCell
        
        if indexPath.row == selectedIndex{
            
            selectedIndex = -1
        }else{
           
            selectedIndex = indexPath.row
        }
        // self.table.beginUpdates()
        table.reloadRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        //  self.table.endUpdates()
        table.reloadData()
    }
        
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        if indexPath.row == selectedIndex{
//            selectedIndex = -1
//        }else{
//            selectedIndex = indexPath.row
//        }
//        // self.table.beginUpdates()
//        tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.fade)
//        //  self.table.endUpdates()
//        table.reloadData()
//    }

