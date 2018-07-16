//
//  ViewController.swift
//  swooshy-gb
//
//  Created by Gurpreet Bhoot on 7/15/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

@IBDesignable

class WelcomeVC: UIViewController {
    
    // Outlets

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // IB-Actions
    
    @IBAction func getStartedBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: ID_TO_LEAGUE_VC, sender: self)
    }
    
    @IBAction func unwindToWelcomeVC(segue: UIStoryboardSegue) {
        
    }
    
}

