//
//  SwitchPlayerViewController.swift
//  ShowHand
//
//  Created by Justin Lin on 2018/8/11.
//  Copyright © 2018年 Justin Lin. All rights reserved.
//

import UIKit

class SwitchPlayerViewController: UIViewController {

    
    
    @IBOutlet var image_card: [UIImageView]!
    
    @IBOutlet weak var button_card: UIButton!
    
    var cards=[Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.image_card[0].image=UIImage(named: cards[0].image)
        self.image_card[1].image=UIImage(named: cards[2].image)
        for i in 3...9 {
        self.image_card[i-1].image=UIImage(named: cards[i].image)
        }
        image_card[0].image=UIImage(named: "back")
    }

    @IBAction func open_card(_ sender: Any) {
        button_card.setBackgroundImage(UIImage(named: cards[1].image), for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
            button_card.setBackgroundImage(UIImage(named: "back"), for: .normal)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
