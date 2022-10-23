//
//  Weather.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/16.
//

import UIKit

protocol WeatherDelegate: AnyObject {
    //func addNewWeather(_ weather: Weather)
    func update(weather: String)
}

// MARK: - 날씨 구조
struct Weather {
    var locationName: String
    var weatherIcon: UIImage?
    var humidityIcon: UIImage?
    var weatherTxt: String
    var temIcon: UIImage?
    var highIcon: UIImage?
    var lowIcon: UIImage?
    var temperature: String
    var humidity: String
    var highTem: String
    var lowTem: String
    var detail: String
}


