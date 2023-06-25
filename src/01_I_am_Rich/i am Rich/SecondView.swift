//
//  SecondView.swift
//  i am Rich
//
//  Created by Albert on 4.11.2022.
//

import Foundation
import UIKit

class SecondView: UIViewController {
    
    @IBOutlet weak var cubeOne: UIImageView!
    @IBOutlet weak var cubeTwo: UIImageView!
    @IBOutlet weak var labelit: UIButton!
    
   
    let cubs = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Code is connected")
        labelit.layer.cornerRadius = 12
        labelit.layer.borderWidth = 2
        labelit.layer.borderColor = UIColor.black.cgColor
        labelit.translatesAutoresizingMaskIntoConstraints = false
        labelit.setTitle("Сыграть с Русским", for: .normal)
        labelit.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 20)
        let constraints = [
            labelit.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            labelit.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelit.widthAnchor.constraint(equalToConstant: 300),
            labelit.heightAnchor.constraint(equalToConstant: 60)
        ]
        NSLayoutConstraint.activate(constraints)
        labelit.addTarget(self, action: #selector(self.animate(sender:)), for: .touchUpInside)
        
        
    }
    
    @objc fileprivate func animate(sender: UIButton){
        print("whats goodie guys?!")
        self.animateView(sender)
        
    }
    
    fileprivate func animateView(_ viewToAnimate: UIView){
        UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
            viewToAnimate.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        }) { (_) in
                UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
                    viewToAnimate.transform = CGAffineTransform(scaleX: 1, y: 1)
                }, completion: nil)
        }
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        cubeOne.image = cubs[Int.random(in: 0..<6)]
        cubeTwo.image = cubs[Int.random(in: 0..<6)]
        
    }
    
}
