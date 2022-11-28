//
//  CalculatorRepository.swift
//  BMI Calculator
//
//  Created by Lucien George on 25/11/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorRepository {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        let (advice, color): (String, UIColor) = getAdviceAndColor(value: bmiValue)
        self.bmi = BMI(value: bmiValue, advice: advice, color: color)
    }

    func getAdviceAndColor(value: Float) -> (String, UIColor) {
        switch value {
        case 0..<19:
            return ("You're too skinny!", UIColor.cyan)
        case 19..<25:
            return ("You're healthy", UIColor.green)
        case 25..<30:
            return ("You're overweight", UIColor.yellow)
        case 30..<40:
            return ("You're obese", UIColor.orange)
        default:
            return ("You're extremely obese", UIColor.red)
        }
    }

    func getBMI() -> BMI? {
        return bmi ?? nil
    }
}
