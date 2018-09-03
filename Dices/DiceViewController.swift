//
//  DiceViewController.swift
//  Dices
//
//  Created by Abdul Rehman on 6/13/18.
//  Copyright © 2018 Abdul Rehman. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {
    
    var firstValue: Int?
    var secondValue: Int?
    
    @IBOutlet weak var firstDice: UIImageView!
    
    @IBOutlet weak var secondDice: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        // The dice will only appear if firstValue and secondValue have been set
        if let firstValue = self.firstValue {
            self.firstDice.image = UIImage(named: "d\(firstValue)")
        } else {
            self.firstDice.image = nil;
        }
        
        if let secondValue = self.secondValue {
            self.secondDice.image = UIImage(named: "d\(secondValue)")
        } else {
            self.secondDice.image = nil
        }
        
        self.firstDice.alpha = 0
        self.secondDice.alpha = 0
    }
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 0.3) {
            self.firstDice.alpha = 1
            self.secondDice.alpha = 1
        }
    }
    
    
    func imageForValue(_ value: Int?) -> UIImage?
    {
        return nil
    }
    
 @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Okbutton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    

   

}
