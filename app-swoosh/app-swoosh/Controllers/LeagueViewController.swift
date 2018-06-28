//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Gurpreet Bhoot on 6/27/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
//    @IBOutlet weak var mensBtn: BorderButton!
//    @IBOutlet weak var womensBtn: BorderButton!
//    @IBOutlet weak var coedBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")//, whichBtn: mensBtn)
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")//, whichBtn: womensBtn)
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")//, whichBtn: coedBtn)
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
    func selectLeague(leagueType: String) {//}, whichBtn: UIButton) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
//        whichBtn.isSelected = true
//        if whichBtn == mensBtn {
//            womensBtn.isSelected = false
//            coedBtn.isSelected = false
//        } else if whichBtn == womensBtn {
//            mensBtn.isSelected = false
//            coedBtn.isSelected = false
//        } else {
//            womensBtn.isSelected = false
//            mensBtn.isSelected = false
//        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.player = player
        }
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
