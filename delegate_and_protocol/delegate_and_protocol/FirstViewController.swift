//
//  ViewController.swift
//  delegate_and_protocol
//
//  Created by Sanskar Jethi on 28/03/19.
//  Copyright © 2019 Sanskar Jethi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanRecieve {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "sendDataForwards" {
            
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            
            secondVC.delegate = self
            
        }
    }
    
    func dataRecieved(data:String) {
        label.text = data
    }


}

