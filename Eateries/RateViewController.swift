//
//  RateViewController.swift
//  Eateries
//
//  Created by Bogdan Belogurov on 22.10.2017.
//  Copyright © 2017 Bogdan Belogurov. All rights reserved.
//

import UIKit

class RateViewController: UIViewController {
    
    @IBOutlet weak var ratingStackView: UIStackView!
    @IBOutlet weak var badButton: UIButton!
    @IBOutlet weak var goodButton: UIButton!
    @IBOutlet weak var brilliantButton: UIButton!
    var restRating: String?
    
    
    @IBAction func rateRestaurant(sender: UIButton) {
        switch sender.tag {
        case 0:
            restRating = "bad"
        case 1:
            restRating = "good"
        case 2:
            restRating = "brilliant"
        default:
            break
        }
        
        performSegue(withIdentifier: "unwindSegueToDVC", sender: sender) //передать данные 
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //        UIView.animate(withDuration: 0.4) {
        //           self.ratingStackView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        //        }
        
        let buttonArray = [badButton, goodButton, brilliantButton]
        for (index, button) in buttonArray.enumerated() {
            let delay = Double(index) * 0.2
            
            UIView.animate(withDuration: 0.6, delay: delay, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                button?.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        ratingStackView.transform = CGAffineTransform(scaleX: 0, y: 0)
        badButton.transform = CGAffineTransform(scaleX: 0, y: 0)
        goodButton.transform = CGAffineTransform(scaleX: 0, y: 0)
        brilliantButton.transform = CGAffineTransform(scaleX: 0, y: 0)
        
        
        let  blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.view.bounds
        blurEffectView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.view.insertSubview(blurEffectView, at: 1)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
