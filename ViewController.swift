//
//  ViewController.swift
//  octa
//
//  Created by Gary Gogis on 5/20/17.
//  Copyright © 2017 Gary Gogis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func delay(delay: Double, closure: @escaping () -> () ){
            let when = DispatchTime.now() + delay
            DispatchQueue.main.asyncAfter(deadline: when) {
                closure()
            }
            
        }


        
                
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func pressPlay(_ sender: Any) {
        print(UserDefaults.standard.integer(forKey: "doneTutorial"))
        if UserDefaults.standard.bool(forKey: "doneTutorial") == false {
            print("OK?")
            performSegue(withIdentifier: "lessGo", sender: nil)
        }else{
            performSegue(withIdentifier: "toLevel", sender: nil)

        }
        
    }
}

