//
//  LoopViewController.swift
//  NavigationExcrcise
//
//  Created by 川崎 隆介 on 2015/12/09.
//  Copyright (c) 2015年 川崎 隆介. All rights reserved.
//

import UIKit

class LoopViewController: UIViewController {
    var barTitle = "1"
    
    @IBAction func pushButton(_ sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "loop") as! LoopViewController
        
        if var num = Int(self.barTitle) {
            num += 1
            controller.barTitle = String(num)
        }
        
        /*
        if var num = self.barTitle.toInt() {
            num++;
            controller.barTitle = String(num)
        }
        */
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = barTitle
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
