//
//  DeviceCollectionViewCell.swift
//  collection
//
//  Created by Mac on 11.01.24.
//

import UIKit

class DeviceCollectionViewCell: UICollectionViewCell {
    
    let imageView = UIImageView()
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
        label.frame = CGRect(x: 0, y: 60, width: frame.size.width, height: 12)
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        
        contentView.addSubview(imageView)
        contentView.addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with deviceName: String, imageName: String) {
        imageView.image = UIImage(systemName: imageName)
        label.text = deviceName
    }
}
