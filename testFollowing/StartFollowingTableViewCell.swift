//
//  StartFollowingTableViewCell.swift
//  testFollowing
//
//  Created by Soemsak on 4/24/2561 BE.
//  Copyright © 2561 Soemsak. All rights reserved.
//

import UIKit

protocol ProfilePhotosTableViewCellDelegate {
    func ProfilePhotosTableViewCellOnAboutClick()
}

class StartFollowingTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var delegate: ProfilePhotosTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionInset = UIEdgeInsetsMake(
                Constant.offset,    // top
                Constant.offset,    // left
                Constant.offset,    // bottom
                Constant.offset     // right
            )
            
            layout.minimumInteritemSpacing = Constant.minItemSpacing
            layout.minimumLineSpacing = Constant.minLineSpacing
        }
        
        collectionView.isScrollEnabled = false
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Int(Constant.totalItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BoxCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemWidth = Constant.getItemWidth(boundWidth: collectionView.bounds.size.width)
        return CGSize(width: itemWidth, height: itemWidth)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Photo Image click : " , indexPath.row)
    }
    
}


