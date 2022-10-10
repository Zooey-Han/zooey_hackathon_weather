//
//  InfoViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/10.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var selectButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        selectButton.layer.cornerRadius = 10
    }
    

    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
