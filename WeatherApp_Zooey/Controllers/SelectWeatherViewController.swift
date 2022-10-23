//
//  SelectWeatherViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/15.
//

import UIKit

final class SelectWeatherViewController: UIViewController {
    
    var weatherListManager = WeatherDataManager()
    let test: Int = 0
    
    // MARK: - 테이블뷰
    private var tableView : UITableView = {
        let tv = UITableView(frame: .zero, style: .plain)
        tv.backgroundColor = .clear
        tv.separatorStyle = .none
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuptableView()
        setupSelectionData()
        collectionUI()
        makeUI()
        setupNaviBar()
    }
    
    // MARK: - 기본 화면 셋팅
    func makeUI() {
        let vc = FirstViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
        view.backgroundColor = .white
    }
    
    // MARK: - 데이터 받아오기
    func setupSelectionData() {
        weatherListManager.makeWeatherDatas()
    }
    
    // MARK: - 테이블뷰 셋팅
    func setuptableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 120
        tableView.register(SelectCell.self, forCellReuseIdentifier: "SelectCell")
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    // MARK: - 테이블뷰 레이아웃
    func collectionUI() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }
    
    // MARK: - 네비게이션바 설정
    func setupNaviBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .clear
        appearance.shadowColor = .clear
        
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        // 백버튼 커스텀
        let backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = backBarButtonItem
        
        // 버튼
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addWeatherTapped))
        
        let line = UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal"), style:.plain, target: self, action: #selector(lineWeatherTapped))
        
        // 버튼 한줄로 묶어줌
        navigationItem.rightBarButtonItems = [line, add]
    }
    
    // MARK: - 네비게이션바 버튼 설정
    @objc func addWeatherTapped() {
        // 화면 전환
        let vc = SearchViewController()
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func lineWeatherTapped() {
        let vc = SettingPersonalViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - 테이블뷰 확장
extension SelectWeatherViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let weatherVC = WeatherViewController()
        let array = weatherListManager.getWeatherList()
        weatherVC.weather = array[indexPath.row]
        navigationController?.pushViewController(weatherVC, animated: true)
    }
}

extension SelectWeatherViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherListManager.getWeatherList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectCell", for: indexPath) as! SelectCell
                    cell.locationName.text = weatherListManager[indexPath.row].locationName
                    cell.weahterIcon.image = weatherListManager[indexPath.row].weatherIcon
                    cell.layer.cornerRadius = 20
                    cell.locationName.tag = indexPath.row
                    return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            weatherListManager.weatherList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
        }
    }
}

extension SelectWeatherViewController: DataListDelegateProtocol {
    func sendDataToWeatherController(data: String) {
//        selectListManager.weatherList.locationName = data
//        if !locations.contains(data){
//            locations.append(data)
//            let weatherService = WeatherService()
//            weatherService.fetchWeather(locationName: data) { response in
//                self.weatherInfoList.append(response)
//                UserDefaults.standard.set(self.cities, forKey: "cities")
//                self.tableView.reloadData()
    }
    
    
}

