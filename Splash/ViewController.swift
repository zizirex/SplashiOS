//
//  ViewController.swift
//  Splash
//
//  Created by Raditya Amandra Iskandar on 2/27/19.
//  Copyright © 2019 Raditya Amandra Iskandar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var bgIntro: UIImageView!
    
    @IBOutlet weak var logoLabel: UILabel!
    
    @IBOutlet weak var emailTextView: UITextField!
    
    @IBOutlet weak var passTextView: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let duration:Double = 1.0
        let delay:Double = 0
        
        self.logoLabel.alpha = 0.0
        self.emailTextView.alpha = 0.0
        self.passTextView.alpha = 0.0

        
        view.addSubview(logoLabel)
        
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: {
            self.moveUp(view: self.logo)
        }, completion: nil)
        
    
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            self.showFade(view: self.logoLabel)
            self.showFade(view: self.emailTextView)
            self.showFade(view: self.passTextView)
        }, completion: nil)
    }
    
   
    func moveUp(view: UIView) {
        view.transform.translatedBy(x: 0, y: -250)
        view.frame.size.height -= 350
        view.transform = CGAffineTransform(scaleX: 0.55, y: 0.55)
    }
    
    func showFade(view: UIView){
        view.alpha = 1.0
        view.transform = CGAffineTransform(translationX: 0.0, y: -100)
        view.frame.size.height -= 350
        
    }
    

}

