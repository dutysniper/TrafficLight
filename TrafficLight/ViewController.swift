//
//  ViewController.swift
//  TrafficLight
//
//  Created by Константин Натаров on 16.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var buttonName: UIButton!
    
    
    private var changeColor: ChangeColor = .red
    private let colorOn: CGFloat = 1.0
    private let colorOff: CGFloat = 0.3
    
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
    }
    
    @IBAction func changeLightButtonTapped() {
        
        switch changeColor {
        case .red:
            greenLight.alpha = colorOff
            redLight.alpha = colorOn
            changeColor = .yellow
        case .yellow:
            redLight.alpha = colorOff
            yellowLight.alpha = colorOn
            changeColor = .green
        case .green:
            yellowLight.alpha = colorOff
            greenLight.alpha = colorOn
            changeColor = .red
        }
    }
    
    @IBAction func renameButtonTapped() {
        buttonName.setTitle("NEXT", for: .normal)
    }
}

extension ViewController {
   private enum ChangeColor {
        case red
        case yellow
        case green
    }
}

