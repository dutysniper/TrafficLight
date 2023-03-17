//
//  ViewController.swift
//  TrafficLight
//
//  Created by Константин Натаров on 16.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var buttonName: UIButton!
    
    enum ChangeColor {
        case red
        case yellow
        case green
    }
    
    private var changeColor: ChangeColor = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        buttonName.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.layer.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.layer.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.layer.frame.width / 2
        redLight.layer.masksToBounds = true
        yellowLight.layer.masksToBounds = true
        greenLight.layer.masksToBounds = true
    }
    
    @IBAction func changeLightButtonTapped() {
        buttonName.setTitle("NEXT", for: .normal)
        
        switch changeColor {
        case .red:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            changeColor = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            changeColor = .green
        case .green:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            changeColor = .red
        }
    }
}


