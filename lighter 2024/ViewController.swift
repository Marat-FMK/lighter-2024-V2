//
//  ViewController.swift
//  lighter 2024
//
//  Created by Marat_FMK on 26.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    
    @IBOutlet var yellowLightView: UIView!
    
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    enum Color {
        case red
        case yellow
        case green
        case exit
    }
    var color = Color.red
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.5
        yellowLightView.alpha = 0.5
        greenLightView.alpha = 0.5
        
    
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    @IBAction func startButtonPressed() {
    
        
        switch color {
            
        case .red:
            startButton.setTitle("Next", for: .normal)
            redLightView.alpha = 1
            color = .yellow
            
        case .yellow:
            redLightView.alpha = 0.5
            yellowLightView.alpha = 1
            color = .green
            
        case .green:
            yellowLightView.alpha = 0.5
            greenLightView.alpha = 1
            startButton.setTitle("Exite", for: .normal)
            color = .exit
            
        case .exit:
            startButton.setTitle("STArT", for: .normal)
            color = .red
            greenLightView.alpha = 0.5
        }
    }
}

        
//    Version with If- else
        //var red = false
//    var yellow = false
//    var green = false
//    var exit = false
//        if red {
//
//            red = false
//            yellow = true
//        }else if yellow {
//
//            yellow = false
//            green = true
//        } else if green {
//            yellowLightView.alpha = 0.5
//            greenLightView.alpha = 1
//            green = false
//            exite = true
//            startButton.setTitle("Exite", for: .normal)
//        } else if exite {
//            startButton.setTitle("STArT", for: .normal)
//            red = true
//            greenLightView.alpha = 0.5
//        }
        




