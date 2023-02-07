//
//  ViewController.swift
//  ChooseColor
//
//  Created by Богдан Радченко on 07.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeRedValue() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func changeGreenValue() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func changeBlueValue() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
}

