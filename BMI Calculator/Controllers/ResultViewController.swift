//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Lucien George on 24/11/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmi: BMI?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.

        if let bmi = self.bmi {
            resultLabel.text = String(format: "%.1f", bmi.value)
            resultLabel.textColor = bmi.color
            adviceLabel.text = bmi.advice
        }
    }

    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
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
