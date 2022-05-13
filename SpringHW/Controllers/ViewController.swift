//
//  ViewController.swift
//  SpringHW
//
//  Created by Василий Полторак on 13.05.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animateView: SpringView!
    @IBOutlet var animationValuesLabel: [UILabel]!
    @IBOutlet weak var startAnimationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startAnimation() {
    }
    
}

