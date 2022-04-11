//
//  Mycolection.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 19/03/22.
//

import UIKit

class MyCollectionViewCell15: UICollectionViewCell {
    
    static let indetifier = "MyCollectionViewCell15"
    
//    static func nib() -> UINib {
//        return UINib(nibName: "MyCollectionViewCell15",
//                     bundle: nil)
    
     let homeview : UIView = {
         let homeview = UIView()
         homeview.translatesAutoresizingMaskIntoConstraints=false
         homeview.backgroundColor = .white
         return homeview
     }()
    
    var gameimage: UIImageView = {
        let gameimage = UIImageView()
        gameimage.translatesAutoresizingMaskIntoConstraints=false
        gameimage.image = UIImage(named: "gamee_image")
        gameimage.layer.masksToBounds = false
        gameimage.layer.cornerRadius = 30
        return gameimage
    }()
    
    
    var coverlabel: UILabel = {
        let coverlabel = UILabel()
        coverlabel.translatesAutoresizingMaskIntoConstraints=false
        coverlabel.font = UIFont.systemFont(ofSize: 8)
        coverlabel.textColor = UIColor.systemGray
        coverlabel.text = "Cover photo"
        return coverlabel
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
 
        contentView.addSubview(homeview)
        homeview.frame = contentView.bounds
//        backgroundColor = .red
    
        homeview.addSubview(gameimage)
        gameimage.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 10).isActive=true
        gameimage.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        gameimage.heightAnchor.constraint(equalToConstant: 50).isActive=true
        gameimage.widthAnchor.constraint(equalToConstant: 50).isActive=true
        gameimage.layer.masksToBounds = true
        gameimage.layer.cornerRadius = 10
        
        homeview.addSubview(coverlabel)
        coverlabel.topAnchor.constraint(equalTo: gameimage.bottomAnchor,constant: 3).isActive=true
        coverlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        
        
        
        
}
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


