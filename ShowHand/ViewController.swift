//
//  ViewController.swift
//  ShowHand
//
//  Created by Justin Lin on 2018/8/11.
//  Copyright © 2018年 Justin Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label_card: [UILabel]!
    
    @IBOutlet var image_card: [UIImageView]!
    
    var cards: [Card] = [Card(suit: "Spade", number: 8, image: "spade_8"), Card(suit: "Spade", number: 9, image: "spade_9"), Card(suit: "Spade", number: 10, image: "spade_10"), Card(suit: "Spade", number: 11, image: "spade_11"), Card(suit: "Spade", number: 12, image: "spade_12"), Card(suit: "Spade", number: 13, image: "spade_13"), Card(suit: "Spade", number: 14, image: "spade_14"), Card(suit: "Heart", number: 8, image: "heart_8"), Card(suit: "Heart", number: 9, image: "heart_9"), Card(suit: "Heart", number: 10, image: "heart_10"), Card(suit: "Heart", number: 11, image: "heart_11"), Card(suit: "Heart", number: 12, image: "heart_12"), Card(suit: "Heart", number: 13, image: "heart_13"), Card(suit: "Heart", number: 14, image: "heart_14"), Card(suit: "Diamond", number: 8, image: "diamond_8"), Card(suit: "Diamond", number: 9, image: "diamond_9"), Card(suit: "Diamond", number: 10, image: "diamond_10"), Card(suit: "Diamond", number: 11, image: "diamond_11"), Card(suit: "Diamond", number: 12, image: "diamond_12"), Card(suit: "Diamond", number: 13, image: "diamond_13"), Card(suit: "Diamond", number: 14, image: "diamond_14"), Card(suit: "Club", number: 8, image: "club_8"), Card(suit: "Club", number: 9, image: "club_9"), Card(suit: "Club", number: 10, image: "club_10"), Card(suit: "Club", number: 11, image: "club_11"), Card(suit: "Club", number: 12, image: "club_12"), Card(suit: "Club", number: 13, image: "club_13"), Card(suit: "Club", number: 14, image: "club_14")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cards.shuffle()
        
        for i in 0...9 {
            image_card[i].image = UIImage(named: cards[i].image)
          label_card[i].text=cards[i].suit + String(cards[i].number)
        }
        
        image_card[1].image=UIImage(named: "back")
       
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let controller = segue.destination as! SwitchPlayerViewController
        
        for i in 0...9 {
            controller.card.append(self.label_card[i].text!)
            controller.cards.append(self.cards[i])
        }
    }
    
}

