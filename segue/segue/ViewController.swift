//
//  ViewController.swift
//  segue
//
//  Created by Sanskar Jethi on 27/03/19.
//  Copyright © 2019 Sanskar Jethi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goTosecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goTosecondScreen" {
            
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.textPassedOver  = textField.text!
            
            
        }
    }

}

