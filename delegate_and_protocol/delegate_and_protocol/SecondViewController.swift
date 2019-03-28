//
//  SecondViewController.swift
//  delegate_and_protocol
//
//  Created by Sanskar Jethi on 28/03/19.
//  Copyright © 2019 Sanskar Jethi. All rights reserved.
//

import UIKit

protocol CanRecieve {
    func dataRecieved(data: String)
}

class SecondViewController: UIViewController {
    
    var delegate : CanRecieve?
    
    var data="" // data to be passed over

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func sendDataBack(_ sender: UIButton) {
        
        delegate?.dataRecieved(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
        // Do any additional setup after loading the view.
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
