//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dixita Bhargava on 11/06/20.
//  Copyright © 2020 Dixita Bhargava. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    func getBMIValue() -> String {
        let bmiDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecimal
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    mutating func calculateBMI(height: Float,width: Float){
        let bmiValue = width / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.3117171526, green: 0.8088459373, blue: 0.9111527801, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9025056958, green: 0.1327115893, blue: 0, alpha: 1))
        }
    }
}

