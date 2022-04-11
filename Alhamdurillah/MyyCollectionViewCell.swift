//
//  myCollectionViewCell.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 18/03/22.
//

import UIKit

class  MyyCollectionViewCell: UICollectionViewCell {
    
    static let indentifier = "MyyCollectionViewCell"
    
   
    let homeview : UIView = {
        let homeview = UIView()
        homeview.translatesAutoresizingMaskIntoConstraints=false
        homeview.backgroundColor = .white
        return homeview
    }()
    
    var imageview: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints=false
        imageview.layer.cornerRadius = 30
        imageview.layer.masksToBounds = false
        imageview.image = UIImage(named: "bedroom_image")
        return imageview
    }()
    
    var productview: UIImageView = {
        let productview = UIImageView()
        productview.layer.cornerRadius = 30
        productview.layer.masksToBounds = false
        productview.translatesAutoresizingMaskIntoConstraints=false
        productview.image = UIImage(named: "product_image")
        return productview
    }()

    var smaileimage: UIImageView = {
        let smaileimage = UIImageView()
        smaileimage.translatesAutoresizingMaskIntoConstraints=false
        smaileimage.layer.masksToBounds = false
        smaileimage.layer.cornerRadius = 30
        smaileimage.image = UIImage(named: "smile_image")
        return smaileimage
    }()
    
    var andijanlabel: UILabel = {
        let andijanlabel = UILabel()
        andijanlabel.translatesAutoresizingMaskIntoConstraints=false
        andijanlabel.font = UIFont.systemFont(ofSize: 12)
        andijanlabel.textColor = UIColor.systemGray
        andijanlabel.text = "Hi-tech corner in Andijan"
        return andijanlabel
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 20)
        alertlabel.textColor = UIColor.black
        alertlabel.text = "2 400 000 sum"
        return alertlabel
    }()
    
    var hilabel: UILabel = {
        let hilabel = UILabel()
        hilabel.translatesAutoresizingMaskIntoConstraints=false
        hilabel.font = UIFont.systemFont(ofSize: 12)
        hilabel.textColor = UIColor.systemGray
        hilabel.text = "Hi-tech corner in Andijan"
        return hilabel
    }()
    
    var manylabel: UILabel = {
        let manylabel = UILabel()
        manylabel.translatesAutoresizingMaskIntoConstraints=false
        manylabel.font = UIFont.systemFont(ofSize: 20)
        manylabel.textColor = UIColor.black
        manylabel.text = "2 400 000 sum"
        return manylabel
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        homeview.heightAnchor.constraint(equalToConstant: 100).isActive=true
//        homeview.widthAnchor.constraint(equalToConstant: 100).isActive=true
        
        contentView.addSubview(homeview)
        homeview.frame=contentView.bounds
        backgroundColor = .white
        
        homeview.addSubview(imageview)
        imageview.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 50).isActive=true
        imageview.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        imageview.heightAnchor.constraint(equalToConstant: 150).isActive=true
        imageview.widthAnchor.constraint(equalToConstant: 150).isActive=true
        imageview.layer.masksToBounds = true
        imageview.layer.cornerRadius = 5

        homeview.addSubview(productview)
        productview.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 50).isActive=true
        productview.leftAnchor.constraint(equalTo: imageview.rightAnchor,constant: 15).isActive=true
        productview.heightAnchor.constraint(equalToConstant: 150).isActive=true
        productview.widthAnchor.constraint(equalToConstant: 150).isActive=true
        productview.layer.masksToBounds = true
        productview.layer.cornerRadius = 5

        homeview.addSubview(andijanlabel)
        andijanlabel.topAnchor.constraint(equalTo: imageview.bottomAnchor,constant: 10).isActive=true
        andijanlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        andijanlabel.numberOfLines = 2

        homeview.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: andijanlabel.bottomAnchor,constant: 10).isActive=true
        alertlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true

        homeview.addSubview(hilabel)
        hilabel.topAnchor.constraint(equalTo: productview.bottomAnchor,constant: 10).isActive=true
        hilabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -5).isActive=true
        hilabel.numberOfLines = 2
        
        homeview.addSubview(manylabel)
        manylabel.topAnchor.constraint(equalTo: hilabel.bottomAnchor,constant: 10).isActive=true
        manylabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -5).isActive=true
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

