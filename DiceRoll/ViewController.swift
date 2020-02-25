//
//  ViewController.swift
//  DiceRoll
//
//  Created by Aguirre, Estefania (Stephanie) on 1/28/20.
//  Copyright © 2020 Erika Aguirre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let numberOne = arc4random_uniform(6) + 1
        
        let numberTwo = arc4random_uniform(6) + 1
        
        label.text = "The sum is: \(numberOne + numberTwo)"
        
        leftImageView.image = UIImage(named: "Dice\(numberOne)")
        
        rightImageView.image = UIImage(named: "Dice\(numberTwo)")
        
    }
    

}

