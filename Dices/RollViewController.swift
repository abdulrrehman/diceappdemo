//
//  ViewController.swift
//  Dices
//
//  Created by Abdul Rehman on 6/13/18.
//  Copyright © 2018 Abdul Rehman. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "rollDice" {
            
            let controller = segue.destination as! DiceViewController
            
            controller.firstValue = self.randomValue()
            controller.secondValue = self.randomValue()
        }
    }
    
    
    
    
    func randomValue() -> Int
    {
        let randomValue = 1 + arc4random() % 6
        
        return Int(randomValue)
    }
    
    @IBAction func rollTheDice()
    {
        performSegue(withIdentifier: "rollDice", sender: self)
    }
    
    
  
    

    

}

