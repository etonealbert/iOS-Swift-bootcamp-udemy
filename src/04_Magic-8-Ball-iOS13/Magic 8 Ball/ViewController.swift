//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballimage: UIImageView!
    
    @IBOutlet weak var Press: UIButton!
    let ballArray = [ #imageLiteral(resourceName: "ball3") , #imageLiteral(resourceName: "ball2.png") , #imageLiteral(resourceName: "ball3.png") , #imageLiteral(resourceName: "ball4.png") , #imageLiteral(resourceName: "ball5.png") ]

        
    @IBAction func Press(_ sender: Any) {
        print("button pressed")
        ballimage.image = ballArray[Int.random(in: 0..<5)]
    }
    

}

