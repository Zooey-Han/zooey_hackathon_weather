//
//  SettingLsitManager.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit

// MARK: - 셋팅화면 테이블뷰 안의 구성
final class SettingLsitManager: UIViewController {
    
    private var settingList: [SettingPesonal] = []

    func makeSettingListDatas() {
        settingList = [
            SettingPesonal(settingLabel: "현재 위치"),
            SettingPesonal(settingLabel: "문의 하기"),
            SettingPesonal(settingLabel: "개인정보 처리방침"),
            SettingPesonal(settingLabel: "개발자 정보"),
        ]
    }
    
    // 리스트 얻기
    func getSettingList() -> [SettingPesonal] {
        return settingList
    }
    
    // 특정멤버 얻기
    subscript(index: Int) -> SettingPesonal {
        get {
            return settingList[index]
        }
        set {
            settingList[index] = newValue
        }
    }
}

                                                                        
