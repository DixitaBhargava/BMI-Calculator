//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Dixita Bhargava on 11/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    var advice : String?
    var color : UIColor?

   
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func bmiChartClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "goToImage", sender: self)
    }
}
