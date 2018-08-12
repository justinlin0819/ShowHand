//
//  ViewController.swift
//  ShowHand
//
//  Created by Justin Lin on 2018/8/11.
//  Copyright © 2018年 Justin Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var image_card: [UIImageView]!
    
    @IBOutlet weak var button_card: UIButton!
    
    var cards: [Card] = [Card(suit: "Spade", number: 8, image: "spade_8"), Card(suit: "Spade", number: 9, image: "spade_9"), Card(suit: "Spade", number: 10, image: "spade_10"), Card(suit: "Spade", number: 11, image: "spade_11"), Card(suit: "Spade", number: 12, image: "spade_12"), Card(suit: "Spade", number: 13, image: "spade_13"), Card(suit: "Spade", number: 14, image: "spade_14"), Card(suit: "Heart", number: 8, image: "heart_8"), Card(suit: "Heart", number: 9, image: "heart_9"), Card(suit: "Heart", number: 10, image: "heart_10"), Card(suit: "Heart", number: 11, image: "heart_11"), Card(suit: "Heart", number: 12, image: "heart_12"), Card(suit: "Heart", number: 13, image: "heart_13"), Card(suit: "Heart", number: 14, image: "heart_14"), Card(suit: "Diamond", number: 8, image: "diamond_8"), Card(suit: "Diamond", number: 9, image: "diamond_9"), Card(suit: "Diamond", number: 10, image: "diamond_10"), Card(suit: "Diamond", number: 11, image: "diamond_11"), Card(suit: "Diamond", number: 12, image: "diamond_12"), Card(suit: "Diamond", number: 13, image: "diamond_13"), Card(suit: "Diamond", number: 14, image: "diamond_14"), Card(suit: "Club", number: 8, image: "club_8"), Card(suit: "Club", number: 9, image: "club_9"), Card(suit: "Club", number: 10, image: "club_10"), Card(suit: "Club", number: 11, image: "club_11"), Card(suit: "Club", number: 12, image: "club_12"), Card(suit: "Club", number: 13, image: "club_13"), Card(suit: "Club", number: 14, image: "club_14")]
    
    var first=1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cards.shuffle()
        button_card.setBackgroundImage(UIImage(named: cards[0].image), for: .normal)
        for i in 1...9 {
            image_card[i-1].image = UIImage(named: cards[i].image)
        }
        image_card[0].image=UIImage(named: "back")
    }

    override func viewWillAppear(_ animated: Bool) {
        if first != 1 {
            button_card.setBackgroundImage(UIImage(named: "back"), for: .normal)
        }
    }
    
    @IBAction func open_card(_ sender: Any) {
        button_card.setBackgroundImage(UIImage(named: cards[0].image), for: .normal)
    }
    
    @IBAction func button_changeplayer(_ sender: Any) {
        first=0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let controller = segue.destination as! SwitchPlayerViewController
        
        for i in 0...9 {
            controller.cards.append(self.cards[i])
        }
    }
    
}

