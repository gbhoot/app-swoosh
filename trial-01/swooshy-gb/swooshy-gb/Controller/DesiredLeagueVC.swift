//
//  DesiredLeagueVC.swift
//  swooshy-gb
//
//  Created by Gurpreet Bhoot on 7/15/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

class DesiredLeagueVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var mensBtn: BorderButton!
    @IBOutlet weak var womensBtn: BorderButton!
    @IBOutlet weak var coedBtn: BorderButton!
    @IBOutlet weak var nextBtn: BorderButton!
    
    // Variables
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
        player = Player()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupView() {
        nextBtn.isEnabled = false
    }
    
    func clearButtonStates() {
        mensBtn.isSelected = false
        womensBtn.isSelected = false
        coedBtn.isSelected = false
    }
    
    func buttonIsSelected(leagueType: String) {
        nextBtn.isEnabled = true
        clearButtonStates()
    }
    
    func selectLeague(leagueType: String, whichBtn: BorderButton) {
        if whichBtn.isSelected == false {
            whichBtn.isSelected = true
        } else {
            buttonIsSelected(leagueType: leagueType)
        }
    }
    
    // IB-Actions
    @IBAction func mensBtnSelected(_ sender: Any) {
        selectLeague(leagueType: "mens", whichBtn: mensBtn)
    }
    
    @IBAction func womensBtnSelected(_ sender: Any) {
        selectLeague(leagueType: "womens", whichBtn: womensBtn)
    }
    
    @IBAction func coedBtnSelected(_ sender: Any) {
        selectLeague(leagueType: "coed", whichBtn: coedBtn)
    }
}
