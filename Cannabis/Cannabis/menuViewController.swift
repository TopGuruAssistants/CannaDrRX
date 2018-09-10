//
//  menuViewController.swift
//  memuDemo
//
//  Created by Parth Changela on 09/10/16.
//  Copyright © 2016 Parth Changela. All rights reserved.
//

import UIKit

class menuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource ,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
  var picker = UIImagePickerController()
 
    @IBOutlet weak var tblTableView: UITableView!
  
    
   
    var ManuNameArray:Array = [String]()
    var iconArray:Array = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblTableView.rowHeight = 116
         picker.delegate = self
        ManuNameArray = ["Profile","Explore doctors","Strains","Prescriptions","Refer a friend"]
     
        iconArray = [UIImage(named:"Profile")!,UIImage(named:"explore_doctor")!,UIImage(named:"strains")!,UIImage(named:"prescription")!,UIImage(named:"prefer to friend")!]

        
       // imgProfile.isUserInteractionEnabled = true
       
        
        
        // self.imgProfile.contentMode = UIViewContentMode.scaleAspectFit
       // self.imgProfile.contentMode = UIViewContentMode.scaleAspectFill
       
        
        
   //  self.navigationController?.setNavigationBarHidden(true, animated: true)
     
        
    }
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
//    @IBAction func qrcodeview(_ sender: Any) {
//        let VC =  self.storyboard?.instantiateViewController(withIdentifier: "QRIMAGEVC") as! QRIMAGEVC
//        self.navigationController?.pushViewController(VC , animated: true)
//        //qrimage.isHidden = false
//
//       // self.revealViewController().revealToggle(animated: true)
//    }
   
    
    
    
    
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        //self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
       // self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "sidemenuCell", for: indexPath) as? sidemenuCell
            cell?.images.image = iconArray[indexPath.row]
        cell?.namess.text = ManuNameArray[indexPath.row]
            
            return cell!
        
       
    }

   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let revealController: SWRevealViewController = self.revealViewController();

       if  indexPath.row == 0 {
           let VC  = self.storyboard?.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
         navigationItem.backBarButtonItem = UIBarButtonItem(title: "Profile", style: .plain, target: nil, action: nil)
     // let newfrontviewcontroller = UINavigationController.init(rootViewController: VC)
        // self.navigationController?.setNavigationBarHidden(false, animated: true)
      // self.navigationController?.pushViewController(VC , animated: true)
       //self.revealViewController().pushFrontViewController(newfrontviewcontroller, animated: true)

        
        
        let nc = revealViewController().frontViewController as! UINavigationController
        nc.pushViewController(VC, animated: false)
        revealViewController().pushFrontViewController(nc, animated: true)
        
         self.revealViewController().revealToggle(animated: true)
    }

    
    if  indexPath.row == 1 {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "ExploreDocVC") as! ExploreDocVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Explore doctors", style: .plain, target: nil, action: nil)
       //  let newfrontviewcontroller = UINavigationController.init(rootViewController: VC)
//        self.navigationController?.pushViewController(VC , animated: true)
         //self.revealViewController().pushFrontViewController(newfrontviewcontroller, animated: true)
        //self.revealViewController().revealToggle(animated: true)
        
        let nc = revealViewController().frontViewController as! UINavigationController
        nc.pushViewController(VC, animated: false)
        revealViewController().pushFrontViewController(nc, animated: true)
    }
    if  indexPath.row == 2 {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "StrainVC") as! StrainVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Strains", style: .plain, target: nil, action: nil)
        //let newfrontviewcontroller = UINavigationController.init(rootViewController: VC)
     //   self.navigationController?.setNavigationBarHidden(false, animated: true)
        // self.navigationController?.pushViewController(VC , animated: true)
        //self.revealViewController().pushFrontViewController(newfrontviewcontroller, animated: true)
      //  self.navigationController?.pushViewController(VC , animated: true)
      //  self.revealViewController().revealToggle(animated: true)
        let nc = revealViewController().frontViewController as! UINavigationController
        nc.pushViewController(VC, animated: false)
        revealViewController().pushFrontViewController(nc, animated: true)
        
        self.revealViewController().revealToggle(animated: true)
    }
    if  indexPath.row == 3 {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "Priscription") as! PriscriptionsVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Refer a friend", style: .plain, target: nil, action: nil)
     //   let newfrontviewcontroller = UINavigationController.init(rootViewController: VC)
       // self.navigationController?.setNavigationBarHidden(false, animated: true)
        // self.navigationController?.pushViewController(VC , animated: true)
       // self.revealViewController().pushFrontViewController(newfrontviewcontroller, animated: true)
       // self.navigationController?.pushViewController(VC , animated: true)
       // self.revealViewController().revealToggle(animated: true)
        let nc = revealViewController().frontViewController as! UINavigationController
        nc.pushViewController(VC, animated: false)
        revealViewController().pushFrontViewController(nc, animated: true)
        
        self.revealViewController().revealToggle(animated: true)
    }

    if  indexPath.row == 4 {
        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "ReferFriendVC") as! ReferFriendVC
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Refer a friend", style: .plain, target: nil, action: nil)
      //  let newfrontviewcontroller = UINavigationController.init(rootViewController: VC)
       // self.navigationController?.setNavigationBarHidden(false, animated: true)
      //  self.navigationController?.pushViewController(VC , animated: true)
        //self.revealViewController().pushFrontViewController(newfrontviewcontroller, animated: true)
        //self.navigationController?.pushViewController(VC , animated: true)
        
        
        
        
        let nc = revealViewController().frontViewController as! UINavigationController
        nc.pushViewController(VC, animated: false)
        revealViewController().pushFrontViewController(nc, animated: true)
        
        self.revealViewController().revealToggle(animated: true)
       
    }
    
//        if  indexPath.row == 5 {
//            let VC =  self.storyboard?.instantiateViewController(withIdentifier: "BankAccInfoVC") as! BankAccInfoVC
//            let newfrontviewcontroller = UINavigationController.init(rootViewController: VC)
//            self.navigationController?.setNavigationBarHidden(false, animated: true)
//            // self.navigationController?.pushViewController(VC , animated: true)
//            self.revealViewController().pushFrontViewController(newfrontviewcontroller, animated: true)
//           // self.navigationController?.pushViewController(VC , animated: true)
//             self.revealViewController().revealToggle(animated: true)
//        }
//
//        if  indexPath.row == 6 {
//            let VC =  self.storyboard?.instantiateViewController(withIdentifier: "AboutUsVC") as! AboutUsVC
//            let newfrontviewcontroller = UINavigationController.init(rootViewController: VC)
//            self.navigationController?.setNavigationBarHidden(false, animated: true)
//            // self.navigationController?.pushViewController(VC , animated: true)
//            self.revealViewController().pushFrontViewController(newfrontviewcontroller, animated: true)
//           // self.navigationController?.pushViewController(VC , animated: true)
//             self.revealViewController().revealToggle(animated: true)
//        }
//        if  indexPath.row == 7{
//            let VC =  self.storyboard?.instantiateViewController(withIdentifier: "TermsandConditionVC") as! TermsandConditionVC
//            let newfrontviewcontroller = UINavigationController.init(rootViewController: VC)
//            self.navigationController?.setNavigationBarHidden(false, animated: true)
//            // self.navigationController?.pushViewController(VC , animated: true)
//            self.revealViewController().pushFrontViewController(newfrontviewcontroller, animated: true)
//            //self.navigationController?.pushViewController(VC , animated: true)
//            self.revealViewController().revealToggle(animated: true)
// }


    }
//
//        let revealviewcontroller:SWRevealViewController = self.revealViewController()
//
//        let cell:MenuCell = tableView.cellForRow(at: indexPath) as! MenuCell
//        print(cell.lblMenuname.text!)
//        if cell.lblMenuname.text! == "Home"
//        {
//            print("Home Tapped")
//            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
//
//            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
//
//        }
//        if cell.lblMenuname.text! == "Message"
//        {
//            print("message Tapped")
//
//            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "MessageViewController") as! MessageViewController
//            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
//
//            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
//        }
//        if cell.lblMenuname.text! == "Map"
//        {
//            print("Map Tapped")
//        }
//        if cell.lblMenuname.text! == "Setting"
//        {
//           print("setting Tapped")
//        }
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
//    revealController.revealToggle(animated: true)
//    }
//    @IBAction func showalertaction(_ sender: Any) {
//        let alert = UIAlertController(title: "", message: "Select Mode", preferredStyle: UIAlertControllerStyle.actionSheet)
//
//
//        let deletbutton =  UIAlertAction(title: "Delete", style: UIAlertActionStyle.destructive, handler: {(action) in
//            self.imgProfile.image = UIImage(named:"AddPicture")!
//
//        })
//        // add the actions (buttons)
//      let takephoto =  UIAlertAction(title: "Take Photo", style: UIAlertActionStyle.default, handler: {(action) in
//
//        if UIImagePickerController.isSourceTypeAvailable(.camera) {
//            self.picker.allowsEditing = false
//            self.picker.sourceType = UIImagePickerControllerSourceType.camera
//            self.picker.cameraCaptureMode = .photo
//            self.picker.modalPresentationStyle = .fullScreen
//            self.present(self.picker,animated: true,completion: nil)
//        } else {
//            self.noCamera()
//        }
//
//
//      })
//
//
//
//
//
//        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
//       let uploadphoto = UIAlertAction(title: "Upload Photo", style: UIAlertActionStyle.default, handler: {(action) in
//        self.picker.delegate = self
//        self.picker.allowsEditing = false
//        self.picker.sourceType = .photoLibrary
//       // self.picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
//     // self.picker.modalPresentationStyle = .popover
//    self.present(self.picker, animated: true, completion: nil)
//        self.picker.popoverPresentationController?.barButtonItem = sender as? UIBarButtonItem
//
//
//
//       })
//
//         //alert.addAction(
//
//
//
//
//         alert.addAction(takephoto)
//         alert.addAction(uploadphoto)
//         alert.addAction(deletbutton)
//        // show the alert
//        self.present(alert, animated: true, completion: nil)
//
//
//    }
//
//
//
//
//
//    //MARK: - Delegates
//    internal func imagePickerController(_ picker: UIImagePickerController,
//                               didFinishPickingMediaWithInfo info: [String : Any])
//    {
//        var  chosenImage = UIImage()
//        chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage //2
//                imgProfile.contentMode = .scaleAspectFill //3
//        imgProfile.image = chosenImage  //4
//
////
//        dismiss(animated:true, completion: nil) //5
//    }
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        dismiss(animated: true, completion: nil)
//    }
//    func noCamera(){
//        let alertVC = UIAlertController(
//            title: "No Camera",
//            message: "Sorry, this device has no camera",
//            preferredStyle: .alert)
//        let okAction = UIAlertAction(
//            title: "OK",
//            style:.default,
//            handler: nil)
//        alertVC.addAction(okAction)
//        present(
//            alertVC,
//            animated: true,
//            completion: nil)
//    }
//
//
//    }
//
}
extension UITableViewCell {
    @IBInspectable var selectionColor: UIColor {
        set {
            let view = UIView()
            view.backgroundColor = newValue
            self.selectedBackgroundView = view
        }
        get {
            return self.selectedBackgroundView?.backgroundColor ?? UIColor.clear
        }
    }
}
