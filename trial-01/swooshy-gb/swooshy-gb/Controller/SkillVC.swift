//
//  SkillVC.swift
//  swooshy-gb
//
//  Created by Gurpreet Bhoot on 7/16/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var beginnerBtn: BorderButton!
    @IBOutlet weak var ballerBtn: BorderButton!
    @IBOutlet weak var finishBtn: BorderButton!
    
    // Variables
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupView() {
        finishBtn.isEnabled = false
    }
    
    func clearButtonStates() {
        setupView()
        beginnerBtn.isSelected = false
        ballerBtn.isSelected = false
    }
    
    func skillSelected(skillLevel: String, btnSelected: BorderButton) {
        if btnSelected.isSelected == false {
            clearButtonStates()
            btnSelected.isSelected = true
            finishBtn.isEnabled = true
        } else {
            clearButtonStates()
        }
        
        player.skillLevel = skillLevel
    }
    
    // IB-Actions
    @IBAction func beginnerBtnSelected(_ sender: Any) {
        skillSelected(skillLevel: "beginner", btnSelected: beginnerBtn)
    }
    
    @IBAction func ballerBtnSelected(_ sender: Any) {
        skillSelected(skillLevel: "baller", btnSelected: ballerBtn)
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func finishBtnPressed(_ sender: Any) {
        print(player.desiredLeague ?? "", player.skillLevel ?? "")
        performSegue(withIdentifier: UNWIND_WELCOME_VC, sender: self)
    }
}
