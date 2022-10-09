//
//  SelectViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/09.
//

import UIKit

class SelectViewController: UIViewController {
    
    // 서치 컨트롤러 생성
    let serchController = UISearchController()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSearchBar()
       
    }
    
    
    // 서치바 셋팅
    func setupSearchBar() {
        navigationItem.searchController = serchController
        serchController.searchBar.placeholder = "지금 날씨가 궁금한 곳은?"
        //serchController.searchBar.delegate = self
        
    }


}

extension SelectViewController: UISearchControllerDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchBar)
        
       
        
        
    }
}
