//
//  ViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/08.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // 애니메이션 보여주기 후 삭제
        view.addSubview(animationView)
        animationView.center = view.center
        
        animationView.play{ (finish) in
            print("Animation finished!")
            
            self.animationView.removeFromSuperview()
            
            
        }
        
        
    }
    
    // splash animation
    let animationView: AnimationView = {
        let animView = AnimationView(name:"10686-the-moon")
        animView.frame = CGRect(x:0, y:0, width: 400, height: 400)
        animView.contentMode = .scaleToFill
        return animView
    }()
    
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        
    }
    
    
}



