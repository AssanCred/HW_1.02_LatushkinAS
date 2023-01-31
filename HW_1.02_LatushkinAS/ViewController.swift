//
//  ViewController.swift
//  HW_1.02_LatushkinAS
//
//  Created by Артём Латушкин on 31.01.2023.
//

import UIKit

enum Color {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    private let alphaOff: CGFloat = 0.3
    private let alphaOn: CGFloat = 1
    
    private var color = Color.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        redView.alpha = alphaOff
        yellowView.alpha = alphaOff
        greenView.alpha = alphaOff
        startButton.layer.cornerRadius = 10
    }

    @IBAction func makeStartButton() {
        
        if startButton.currentTitle != "NEXT" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch color {
        case .red:
            redView.alpha = alphaOn
            greenView.alpha = alphaOff
            color = .yellow
        case .yellow:
            redView.alpha = alphaOff
            yellowView.alpha = alphaOn
            color = .green
        case .green:
            yellowView.alpha = alphaOff
            greenView.alpha = alphaOn
            color = .red
        }
    }
    
}

