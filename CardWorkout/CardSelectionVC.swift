//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Suraj Jaiswal on 07/02/23.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    
    @IBOutlet var cardImgView: UIImageView!
    @IBOutlet var Buttons: [UIButton]!
    
    var cards : [UIImage] = Deck.cards
    
    var timer : Timer! // implicit unwrapping
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(shuffleCards), userInfo: nil, repeats: true)
    }
    
    @objc func shuffleCards(){
        cardImgView.image = cards.randomElement() ?? UIImage(imageLiteralResourceName: "AS")
    }

    @IBAction func onClickStop(_ sender: UIButton) {
        if(timer != nil){
            timer.invalidate()
        }
    }
    
    @IBAction func onClickRestart(_ sender: UIButton) {
        if(timer != nil){
            timer.invalidate()
        }
        startTimer()
    }
    
    @IBAction func onClickRules(_ sender: Any) {
    }
    
}
