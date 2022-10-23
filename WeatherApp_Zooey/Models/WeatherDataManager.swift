//
//  WeatherDataManager.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/16.
//

import UIKit

// MARK: - 날씨 데이터 구성
final class WeatherDataManager: UIViewController {
    
    var weatherList: [Weather] = []
    
    func makeWeatherDatas() {
        
        weatherList = [
            Weather(locationName: "서 울", weatherIcon: UIImage(named: "맑음"), humidityIcon: UIImage(named: "습도"), weatherTxt: "맑 음", temIcon: UIImage(named: "온도"), highIcon: UIImage(named: "최고"), lowIcon: UIImage(named: "최저"), temperature: "현재 11°", humidity: "습도 62%", highTem: "최고 21°", lowTem: "최저 10°", detail: "파란하늘이 내려앉은 듯 화창한 날씨입니다 ☀️"),
            Weather(locationName: "뉴 욕", weatherIcon: UIImage(named: "비"), humidityIcon: UIImage(named: "습도"), weatherTxt: "비", temIcon: UIImage(named: "온도"), highIcon: UIImage(named: "최고"), lowIcon: UIImage(named: "최저"), temperature: "9°", humidity: "습도 89%", highTem: "최고 15°", lowTem: "최저 6°", detail: "오늘은 창밖으로 빗소리가 들리겠어요 ☂️"),
            Weather(locationName: "도 쿄", weatherIcon: UIImage(named: "약간흐림"), humidityIcon: UIImage(named: "습도"), weatherTxt: "구름 조금", temIcon: UIImage(named: "온도"), highIcon: UIImage(named: "최고"), lowIcon: UIImage(named: "최저"), temperature: "현재 26°", humidity: "습도 15%", highTem: "최고 29°", lowTem: "최저 18°", detail: "해와 달이 잘 보이지 않는 날씨입니다 ⛅️"),
            Weather(locationName: "런 던", weatherIcon: UIImage(named: "흐림"), humidityIcon: UIImage(named: "습도"), weatherTxt: "흐 림", temIcon: UIImage(named: "온도"), highIcon: UIImage(named: "최고"), lowIcon: UIImage(named: "최저"), temperature: "현재 32°", humidity: "습도 70%", highTem: "최고 24°", lowTem: "최저 21°", detail: "구름이 솜사탕 같아요 ☁️"),
            Weather(locationName: "파 리", weatherIcon: UIImage(named: "눈"), humidityIcon: UIImage(named: "습도"), weatherTxt: "구름 많음", temIcon: UIImage(named: "온도"), highIcon: UIImage(named: "최고"), lowIcon: UIImage(named: "최저"), temperature: "현재 2°", humidity: "습도 74%", highTem: "최고 4°", lowTem: "최저 -9°", detail: "첫 눈이에요 ⛄️"),
            Weather(locationName: "시드니", weatherIcon: UIImage(named: "돌풍"), humidityIcon: UIImage(named: "습도"), weatherTxt: "바람 많음", temIcon: UIImage(named: "온도"), highIcon: UIImage(named: "최고"), lowIcon: UIImage(named: "최저"), temperature: "현재 15°", humidity: "습도 52%", highTem: "최고 20°", lowTem: "최저 12°", detail: "날씨가 흐리다고 기분까지 흐려지지 마세요 🍃")
        ]
    }
    
    // 리스트 얻기
    func getWeatherList() -> [Weather] {
        return weatherList
    }
    
    // 특정 멤버 얻기
    subscript(index: Int) -> Weather {
        get {
            return weatherList[index]
        }
        set {
            weatherList[index] = newValue
        }
    }
}
