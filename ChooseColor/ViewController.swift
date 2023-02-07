//
//  ViewController.swift
//  ChooseColor
//
//  Created by Богдан Радченко on 07.02.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var viewLabel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    @IBAction func changeRedValue() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        changeBackgroundColor()
    }
    
    @IBAction func changeGreenValue() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        changeBackgroundColor()
    }
    
    @IBAction func changeBlueValue() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        changeBackgroundColor()
    }
    
    private func setupView() {
        viewLabel.layer.cornerRadius = 12
        changeBackgroundColor()
    }
    
    private func changeBackgroundColor() {
        viewLabel.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(1))
    }
    
}

