//
//  SelectListManager.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/16.
//

import UIKit

// MARK: - 날씨 리스트 구성
final class SelectListManager: UIViewController {
    
    private var selectList: [Select] = []
    var deSelectList: [Select] = []
    
    func makeSelectData() {
        selectList = [
            Select(locationName: "서 울", weatherIcon: UIImage(named: "맑음")),
            Select(locationName: "뉴 욕", weatherIcon: UIImage(named: "비")),
            Select(locationName: "도 쿄", weatherIcon: UIImage(named: "약간흐림")),
            Select(locationName: "런 던", weatherIcon: UIImage(named: "흐림")),
            Select(locationName: "파 리", weatherIcon: UIImage(named: "눈")),
            Select(locationName: "시드니", weatherIcon: UIImage(named: "돌풍"))
        ]
    }
        
    // 리스트 얻기
    func getSelectList() -> [Select] {
        // 여기에 리스트가 변하면 .count도 변하게!
        // collectionview.reoadData()
        return selectList
    }
    
    // 새로운 날씨 만들기
    func makeWeather(_ weather: Select) {
        selectList.append(weather)
    }
    
    // 특정 멤버 얻기
    subscript(index: Int) -> Select {
        get {
            return selectList[index]
        }
        set {
            selectList[index] = newValue
        }
    }
}

