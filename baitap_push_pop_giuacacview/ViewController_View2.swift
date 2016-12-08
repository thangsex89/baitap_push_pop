//
//  ViewController_View2.swift
//  baitap_push_pop_giuacacview
//
//  Created by Thang on 12/7/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import UIKit

class ViewController_View2: UIViewController {
    
    
    
    //start 
    
    
    @IBOutlet weak var lb_random1: UILabel!
    
    @IBOutlet weak var lb_random2: UILabel!
    
    @IBOutlet weak var btn_kq1: UIButton!
    
    @IBOutlet weak var btn_kq2: UIButton!
    
    @IBOutlet weak var btn_kq3: UIButton!
    
    
    @IBOutlet weak var label_kqd: UILabel!
    
    @IBOutlet weak var label_kqs: UILabel!
    var ketquadung: Int = 0
    var ketquasai: Int = 0
    var ketqua: Int = 0
    
    
    
    //end

    override func viewDidLoad() {
        super.viewDidLoad()

        Set_random()
        Set_random_result()
        label_kqd.text = String(ketquadung)
        label_kqs.text = String(ketquasai)
        // Do any additional setup after loading the view.
    }
    //start
    func Set_random()  {
        let random1 = Int(arc4random_uniform(4))+1// random ra 1 so (0-3) +1
        let random2 = Int(arc4random_uniform(5))
        // print("so random 1 la \(random1)")
        // print("so random 1 la \(random2)")
        // set cho 2 so hien thi len man hinh
        lb_random1.text = String(random1)
        lb_random2.text  = String(random2)
        ketqua = random1 + random2
    }
    func Set_random_result ()
    {
        let kq = ketqua
        
        var random1 = Int(arc4random_uniform(8))
        if( random1 == kq)
        {
            random1 = kq + 2
        }
        var random2 = Int(arc4random_uniform(8))
        if (random2 == kq)
        {
            random2 = kq + 5
        }
        if (random2 == random1)
        {
            random2 = random1 + kq
        }
        
        var random_kq = Int(arc4random_uniform(3))
        
        if (random_kq == 0)
        {
            
            btn_kq1.setTitle(String(random1), for:.normal)
            btn_kq2.setTitle(String(random2), for: .normal)
            btn_kq3.setTitle(String(kq), for: .normal)
        }
        if (random_kq == 1)
        {
            
            btn_kq1.setTitle(String(random1), for:.normal)
            btn_kq2.setTitle(String(kq), for: .normal)
            btn_kq3.setTitle(String(random2), for: .normal)
        }
        if (random_kq == 2)
        {
            
            btn_kq1.setTitle(String(kq), for:.normal)
            btn_kq2.setTitle(String(random2), for: .normal)
            btn_kq3.setTitle(String(random1), for: .normal)
        }
        
        
        
    }
    
    @IBAction func btn_action_kq1(_ sender: Any) {
        if( btn_kq1.titleLabel?.text == String(ketqua))
        {
            ketquadung += 1
            
            
        }else
        {
            ketquasai += 1
        }
        
        label_kqd.text = String(ketquadung)
        label_kqs.text = String(ketquasai)
        Set_random()
        Set_random_result()

    }
    
    @IBAction func btn_action_kq2(_ sender: Any) {
        if( btn_kq2.titleLabel?.text == String(ketqua))
        {
            ketquadung += 1
            
            
        }else
        {
            ketquasai += 1
        }
        
        label_kqd.text = String(ketquadung)
        label_kqs.text = String(ketquasai)
        Set_random()
        Set_random_result()
    }

    @IBAction func btn_action_kq3(_ sender: Any) {
        if( btn_kq3.titleLabel?.text == String(ketqua))
        {
            ketquadung += 1
            
            
        }else
        {
            ketquasai += 1
        }
        
        label_kqd.text = String(ketquadung)
        label_kqs.text = String(ketquasai)
        Set_random()
        Set_random_result()

    }
 
    
    //end

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
