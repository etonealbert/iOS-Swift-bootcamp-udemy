//
//  ViewController.swift
//  i am Rich
//
//  Created by Albert on 25.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    
    var imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width:300, height: 300 ))
        imageView.image = UIImage(named:"launch" )
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
            self.performSegue(withIdentifier: "segue", sender: self)
        }
       
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            self.animation()
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    
    func animation(){
        UIView.animate(withDuration: 3){
            let size = self.view.frame.size.width * 2
            let xpostion = 0 - self.view.frame.width
            let ypostion = self.view.frame.height - size
            self.imageView.frame = CGRect(x: xpostion/2, y: ypostion/2, width: size, height: size)
            self.imageView.alpha = 1
        }
    }


}

