//
//  MainViewController.swift
//  SpringHW
//
//  Created by Василий Полторак on 13.05.2022.
//

import Spring

class MainViewController: UIViewController {

    @IBOutlet weak var animateView: SpringView!
    @IBOutlet var animationValuesLabel: [UILabel]!
    @IBOutlet weak var startAnimationButton: UIButton!
    
    private var animation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateView.layer.cornerRadius = 10
        startAnimationButton.layer.cornerRadius = 10
        
        animationPreparation()
    }

    @IBAction func startAnimation() {
        animationInstall()
        animateView.animate()
        
        animationPreparation()
    }
    
    private func animationSetup() -> Animation {
        let animationPreset = Spring.AnimationPreset.allCases.randomElement()!
        let animationCurve = Spring.AnimationCurve.allCases.randomElement()!
        let animationForce = CGFloat.random(in: 0...1.8)
        let animationDuration = CGFloat.random(in: 1...3)
        let animationDelay = CGFloat.random(in: 0...1)
        
        return Animation(preset: animationPreset,
                         curve: animationCurve,
                         force: animationForce,
                         duration: animationDuration,
                         delay: animationDelay)
    }
    
    private func animationInstall() {
        animateView.animation = animation.preset.rawValue
        animateView.curve = animation.curve.rawValue
        animateView.force = animation.force
        animateView.duration = animation.duration
        animateView.delay = animation.delay

        animationValuesLabel[0].text = animation.preset.rawValue
        animationValuesLabel[1].text = animation.curve.rawValue
        animationValuesLabel[2].text = String(format: "%.2f", animation.force)
        animationValuesLabel[3].text = String(format: "%.2f", animation.duration)
        animationValuesLabel[4].text = String(format: "%.2f", animation.delay)
    }
    
    private func animationPreparation() {
        animation = animationSetup()
        startAnimationButton.setTitle("Run \(animation.preset.rawValue)", for: .normal)
    }
    
}

