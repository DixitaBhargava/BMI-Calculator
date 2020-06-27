//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Dixita Bhargava on 11/06/2020.
//  Copyright © 2020 Dixita Bhargava. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weigthSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = height + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
         weightLabel.text = weight + "Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weigthSlider.value
        
        calculatorBrain.calculateBMI(height: height, width: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

