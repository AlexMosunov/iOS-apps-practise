//
//  ViewController.swift
//  T-converter
//
//  Created by Alex Mosunov on 2/27/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
        }
    }
    

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let temperatureCels = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCels)ºC"
        
        let temperatureFar = Int(round((sender.value * 1.8) + 32))
        fahrenheitLabel.text = "\(temperatureFar)ºF"
    }
    
}

