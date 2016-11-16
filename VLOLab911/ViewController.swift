//
//  ViewController.swift
//  VLOLab911
//
//  Created by Prowadzący on 09/11/16.
//  Copyright © 2016 KIS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        let name = nameTextField.text!
        let message = "Cześć, \(name)!"
        messageLabel.text = message
    }
    
    @IBAction func comeBackToMainScreen(_ segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewCtrl = segue.destination as! SecondViewController
        secondViewCtrl.name = nameTextField.text!
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    


}

