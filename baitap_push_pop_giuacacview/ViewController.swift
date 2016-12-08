//
//  ViewController.swift
//  baitap_push_pop_giuacacview
//
//  Created by Thang on 12/7/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var uiimage_logo: UIImageView!
    var user = ["thai":"123","buoi":"456","chuoi":"789"]
    
    @IBOutlet weak var tf_user: UITextField!
    
    @IBOutlet weak var tf_pass: UITextField!

    @IBOutlet weak var lb_welcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        uiimage_logo.alpha = 0
        lb_welcome.alpha = 0
    }
    //start
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 4, animations: {
            
            self.uiimage_logo.alpha = 1
            
        }) { (finished) in
            
            UIView.animate(withDuration: 3, animations: {
                
                self.lb_welcome!.center = CGPoint(x: self.uiimage_logo!.center.x, y: 100)
                
                
                self.lb_welcome.alpha = 1
                
            })
            
        }
        
    }
    
    @IBAction func btn_login(_ sender: Any) {
        if let password  =  user[tf_user.text!] // user[key] trả về value = 123
        {
            if (password == tf_pass.text)
            {
                let v2 = self.storyboard?.instantiateViewController(withIdentifier: "V2") as! ViewController_View2
                self.navigationController?.pushViewController(v2, animated: true)
            }
        
        }
    }
    
    //end
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

