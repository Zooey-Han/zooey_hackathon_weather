//
//  CellMessage.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/10.
//

import Foundation

struct CellMessage {
    var locationName: String
    var weatherIcon: String
    var weatherTxt: String
    var temperature: String
    var humidity: String
    var highTem: String
    var lowTem: String
    var detail: String
}





extension CellMessage {
    static let messages: [CellMessage] = [
        
        CellMessage(locationName: "서 울", weatherIcon: "맑음", weatherTxt: "맑음", temperature: "11°", humidity: "62%", highTem: "21°", lowTem: "10°", detail: "파란하늘이 내려앉은 듯 화창한 날씨입니다"),
        CellMessage(locationName: "뉴 욕", weatherIcon: "비", weatherTxt: "비", temperature: "9°", humidity: "89%", highTem: "15°", lowTem: "6°", detail: "오늘은 창밖으로 빗소리가 들리겠어요"),
        CellMessage(locationName: "도 쿄", weatherIcon: "약간흐림", weatherTxt: "흐림", temperature: "26°", humidity: "15%", highTem: "29°", lowTem: "18°", detail: "해와 달이 잘 보이지 않는 날씨입니다"),
        CellMessage(locationName: "런 던", weatherIcon: "흐림", weatherTxt: "흐림", temperature: "32°", humidity: "70%", highTem: "24°", lowTem: "21°", detail: "구름이 솜사탕 같아요"),
        CellMessage(locationName: "파 리", weatherIcon: "눈", weatherTxt: "구름 조금", temperature: "2°", humidity: "74%", highTem: "4°", lowTem: "- 9°", detail: "첫 눈이에요"),
        
    ]
}
