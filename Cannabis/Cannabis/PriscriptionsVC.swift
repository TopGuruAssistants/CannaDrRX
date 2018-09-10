//
//  PriscriptionsVC.swift
//  Cannabis
//
//  Created by Raurnet solutions on 08/09/18.
//  Copyright © 2018 yesitlabs. All rights reserved.
//

import UIKit

class PriscriptionsVC: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        // Do any additional setup after loading the view.
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
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell =  table.dequeueReusableCell(withIdentifier: "PriscriptionsCell", for: indexPath) as? PriscriptionsCell
            if indexPath.row == selectedIndex {
//                cell?.billinglbl.isHidden = false
//                cell?.shippingadd.isHidden = false
                // let imagee = UIImage(named: "expand-arrow-up") as UIImage?
                //  cell.downarroe.image = imagee
                
            }else {
//                cell?.billinglbl.isHidden = true
//                cell?.shippingadd.isHidden = true
//                // let imagee = UIImage(named: "expand-arrow-down") as UIImage?
                //  cell.downarroe.image = imagee
                
            }
            cell?.readmore.addTarget(self, action: #selector(animate), for: .touchUpInside)
            return cell!
        }else{
            
            let cell =  table.dequeueReusableCell(withIdentifier: "PriscriptionsCell1", for: indexPath) as? PriscriptionsCell1
            
            cell?.setappointment.addTarget(self, action: #selector(paymentbttn), for: .touchUpInside)
            return cell!
            
        }
    }
    
    @objc func paymentbttn() {
//        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
//        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Pain Profile", style: .plain, target: nil, action: nil)
//        self.navigationController?.pushViewController(VC, animated: true)
//
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            if indexPath.row == selectedIndex {
                return 771
                
            }else {
                
                return 500
            }
            
        } else {
            return 187
        }
    }
    
    var selectedIndex : NSInteger! = -1 //Delecre this global
    @objc func animate(){
        var indexPath = IndexPath(row: 0, section: 0)
        let cell = self.table.cellForRow(at: indexPath) as! PriscriptionsCell
        
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


