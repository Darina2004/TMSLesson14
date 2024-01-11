//
//  ViewController.swift
//  collection
//
//  Created by Mac on 11.01.24.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let devices = ["iPhone", "iPad", "Mac", "Watch", "Apple TV", "HomePod", "iPod touch", "AirPods Max", "AirPods Pro", "AirPods"]
    let images = ["iphone", "ipad", "macpro.gen3", "applewatch.watchface", "appletv", "homepod", "ipodtouch", "airpodsmax", "airpodspro", "airpods"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        
    }
    
    func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 50, left: 10, bottom: 50, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 200), collectionViewLayout: layout)
        
        collectionView.register(DeviceCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        
        view.addSubview(collectionView)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return devices.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DeviceCollectionViewCell
        cell.configure(with: devices[indexPath.row], imageName: images[indexPath.row])
     
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(devices[indexPath.row])
    }
}
