//
//  ViewController.swift
//  HW_1.02_LatushkinAS
//
//  Created by Артём Латушкин on 31.01.2023.
//

import UIKit

enum Color {
    case red, yellow, green
}

final class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentColor = Color.red
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redView.alpha = lightOff
        yellowView.alpha = lightOff
        greenView.alpha = lightOff
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    @IBAction func startChangeColor() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
            }
        switch currentColor {
        case .red:
            greenView.alpha = lightOff
            redView.alpha = lightOn
            currentColor = .yellow
        case .yellow:
            redView.alpha = lightOff
            yellowView.alpha = lightOn
            currentColor = .green
        case .green:
            yellowView.alpha = lightOff
            greenView.alpha = lightOn
            currentColor = .red
        }
    }
}

