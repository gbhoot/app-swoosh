//
//  ViewController.swift
//  app-swoosh
//
//  Created by Gurpreet Bhoot on 6/26/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        swoosh.frame = CGRect(x: (view.frame.size.width / 2) - (swoosh.frame.size.width / 2), y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
//        
//        bgImg.frame = view.frame
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

