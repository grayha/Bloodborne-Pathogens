//
//  ViewController.swift
//  bloodborne pathogens
//
//  Created by harrison on 4/12/16.
//  Copyright © 2016 harrison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentPosition = 0
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var previousButton: UIButton!
   
    @IBOutlet weak var quizButton: UIButton!
    
    
    let slides = [UIImage(named: "Slide01"), UIImage(named: "Slide02"), UIImage(named: "Slide03"), UIImage(named: "Slide04"), UIImage(named: "Slide05"), UIImage(named: "Slide06"), UIImage(named: "Slide07"), UIImage(named: "Slide08"), UIImage(named: "Slide09"), UIImage(named: "Slide10"), UIImage(named: "Slide11"), UIImage(named: "Slide12"), UIImage(named: "Slide13"), UIImage(named: "Slide14"), UIImage(named: "Slide15"), UIImage(named: "Slide16"), UIImage(named: "Slide17"), UIImage(named: "Slide18"), UIImage(named: "Slide19"), UIImage(named: "Slide20"), UIImage(named: "Slide21")]

    @IBOutlet weak var slideFrame: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        slideFrame.image = slides[currentPosition]
        quizButton.hidden = true
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func nextSlidebuton(sender: UIButton) {
        if currentPosition == slides.count - 1 {
            nextButton.enabled = false
            previousButton.enabled = true
            quizButton.hidden = false
        } else {
            previousButton.enabled = true
            currentPosition += 1
            slideFrame.image = slides[currentPosition]
            nextButton.enabled = true
        }
    }
    
    @IBAction func lastSlideButton(sender: UIButton) {
        if currentPosition <= 0 {
            previousButton.enabled = false
            nextButton.enabled = true
        } else {
            previousButton.enabled = true
            currentPosition -= 1
            slideFrame.image = slides[currentPosition]
            nextButton.enabled = true
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func goToQuiz(sender: UIButton) {
        navigationController?.performSegueWithIdentifier("quizSegue", sender: nil)
    }

}

