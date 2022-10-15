//
//  SelectViewController.swift
//  WeatherApp_Zooey
//
//  Created by zooey on 2022/10/09.
//

import UIKit


class SelectViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let messages: [CellMessage] = CellMessage.messages
    static let clickView: [CellMessage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        // 컬렉션 셀 간격
        layout.minimumLineSpacing = 10
        collectionView!.collectionViewLayout = layout
    }
    
    // 클릭된 셀 가져와서 카운트 세기
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! SearchCollectionViewCell
        cell.clickCount += 1
    }
}

extension SelectViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return messages.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionViewCell", for: indexPath) as? SearchCollectionViewCell else {
            return UICollectionViewCell()
        }
        let message = messages[indexPath.item]
        cell.configure(message)
        //컬렉션 셀 코너 둥글게
        cell.layer.cornerRadius = 20
        return cell
    }
}

extension SelectViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 360, height: 70)
    }
}

// 불러올거야
//extension SelectViewController: UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        let framework = messages[indexPath.item]
        
          
            
            //스토리보드로 가져올 데이터 weatherViewController!! -> 실패
            //        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            //        let vc = storyBoard.instantiateViewController(withIdentifier: "WeatherViewController") as! SelectViewController
            //        present(vc, animated: true)
            

 //   }
    
//}
