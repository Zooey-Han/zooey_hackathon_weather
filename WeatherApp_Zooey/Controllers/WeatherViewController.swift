//
//  WeatherViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/08.
//

import UIKit

class WeatherViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // back 버튼 사라지게
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         self.navigationItem.hidesBackButton = true
    }
    

    

}
