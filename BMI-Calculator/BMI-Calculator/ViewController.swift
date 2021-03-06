//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Ramin on 6/3/21.
//

import UIKit

class ViewController: UIViewController {

//Components
    
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
    }

//Function
    @IBAction func calculateBmi(_ sender: Any) {
        let height = Double(heightInput.text!)!
        let weight = Double(weightInput.text!)!
        
//calculation
        let bmi = Double(weight / (height * height))
        let bodyMassIndex = Double(round(1000*bmi)/1000)
        
//Rendering result
        label.text = "Your BMI is \(bodyMassIndex)"
    }
}

