//
//  ViewController.swift
//  CardAnimation
//
//  Created by Brian Advent on 02.04.17.
//  Copyright © 2017 Brian Advent. All rights reserved.
//

import UIKit
import Lottie


class ViewController: UIViewController {

    var animationView:LOTAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addAnimationView(withImageView: nil)
        
    }
    
    
    func addAnimationView (withImageView imageView:UIImageView?) {
    
        if animationView != nil {
            animationView?.removeFromSuperview()
            animationView = nil
        }
        
        
        animationView = LOTAnimationView(name: "CardAnimation")
        animationView?.center = self.view.center
        animationView?.frame.origin.y -= 100
        
        if let newImage = imageView {
            animationView?.addSubview(newImage, toLayerNamed: "Placeholder")
        }
        
        
        self.view.addSubview(animationView!)

        
        
    
    }

    
    @IBAction func chooseImage(_ sender: UIButton) {
        let imageView = UIImageView()
        
        if sender.tag == 0 {
            imageView.image = UIImage(named: "img1")
        }else{
            imageView.image = UIImage(named: "img2")
        }
        
        addAnimationView(withImageView: imageView)
        
        
    }
    
    
    @IBAction func playAnimation(_ sender: Any) {
        if animationView != nil {
            animationView?.play()
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

