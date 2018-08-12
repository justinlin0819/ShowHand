//
//  SwitchPlayerViewController.swift
//  ShowHand
//
//  Created by Justin Lin on 2018/8/11.
//  Copyright © 2018年 Justin Lin. All rights reserved.
//

import UIKit

class SwitchPlayerViewController: UIViewController {

    
    @IBOutlet var label_card: [UILabel]!
    
    @IBOutlet var image_card: [UIImageView]!
    
    var card=[String]()
    var cards=[Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for i in 0...9 {
            self.label_card[i].text=self.card[i]
        self.image_card[i].image=UIImage(named: cards[i].image)
        }
        image_card[0].image=UIImage(named: "back")
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
