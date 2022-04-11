//
//  FirstTableViewCell.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 23/03/22.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    var homeview: UIView = {
        let homeview = UIView()
        homeview.translatesAutoresizingMaskIntoConstraints=false
        homeview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        homeview.layer.contents = 10
        return homeview
    }()
    
    var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints=false
        image.image = UIImage(named: "texno_image")
        return image
    }()
    
    var texnolabel: UILabel = {
        let texnolabel = UILabel()
        texnolabel.translatesAutoresizingMaskIntoConstraints=false
        texnolabel.font = UIFont.systemFont(ofSize: 20)
        texnolabel.textColor = UIColor.black
        texnolabel.text = "Texnomart"
        return texnolabel
    }()
    
    var followlabel: UILabel = {
        let followlabel = UILabel()
        followlabel.translatesAutoresizingMaskIntoConstraints=false
        followlabel.font = UIFont.systemFont(ofSize: 14)
        followlabel.textColor = UIColor.systemGray
        followlabel.text = "29k followers"
        return followlabel
    }()
    
    var btn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.backgroundColor = UIColor(rgb: 0x7ED321)
        btn.layer.cornerRadius = 20
        btn.layer.masksToBounds = false
        btn.setTitle("+ Follow", for: .normal)
        return btn
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 10)
        alertlabel.textColor = UIColor.systemGray
        alertlabel.numberOfLines = 5
        alertlabel.text = "Texnomart - это лидирующая сеть розничных магазинов по продаже товаров в рассрочку без процентов по приемлемым ценам."
        return alertlabel
    }()
    
    var televisionimage: UIImageView = {
        let televisionimage = UIImageView()
        televisionimage.translatesAutoresizingMaskIntoConstraints=false
        televisionimage.layer.cornerRadius = 30
        televisionimage.image = UIImage(named: "television_image")
        return televisionimage
    }()
    
    var carimage: UIImageView = {
        let carimage = UIImageView()
        carimage.translatesAutoresizingMaskIntoConstraints=false
        carimage.layer.cornerRadius = 30
        carimage.image = UIImage(named: "carr_image")
        return carimage
    }()
    
    var snowimage: UIImageView = {
        let snowimage = UIImageView()
        snowimage.translatesAutoresizingMaskIntoConstraints=false
        snowimage.layer.cornerRadius = 30
        snowimage.image = UIImage(named: "snow_image")
        return snowimage
    }()
    
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(homeview)
        homeview.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 15).isActive=true
        homeview.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 15).isActive=true
        homeview.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -15).isActive=true
        homeview.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -15).isActive=true
        
        homeview.addSubview(image)
        image.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 50).isActive=true
        image.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        
        homeview.addSubview(texnolabel)
        texnolabel.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 50).isActive=true
        texnolabel.leftAnchor.constraint(equalTo: image.rightAnchor,constant: 15).isActive=true
        
        homeview.addSubview(followlabel)
        followlabel.topAnchor.constraint(equalTo: texnolabel.bottomAnchor,constant: 0).isActive=true
        followlabel.leftAnchor.constraint(equalTo: image.rightAnchor,constant: 15).isActive=true
        
        homeview.addSubview(btn)
        btn.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 55).isActive=true
        btn.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        btn.heightAnchor.constraint(equalToConstant: 35).isActive=true
        btn.widthAnchor.constraint(equalToConstant: 80).isActive=true
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 5
        
        homeview.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: image.bottomAnchor,constant: 10).isActive=true
        alertlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        alertlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        
        homeview.addSubview(televisionimage)
        televisionimage.topAnchor.constraint(equalTo: alertlabel.bottomAnchor,constant: 15).isActive=true
        televisionimage.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        televisionimage.heightAnchor.constraint(equalToConstant: 235).isActive=true
        televisionimage.widthAnchor.constraint(equalToConstant: 150).isActive=true
        
        homeview.addSubview(carimage)
        carimage.topAnchor.constraint(equalTo: alertlabel.bottomAnchor,constant: 15).isActive=true
        carimage.leftAnchor.constraint(equalTo: televisionimage.rightAnchor,constant: 5).isActive=true
        carimage.heightAnchor.constraint(equalToConstant: 115).isActive=true
        carimage.widthAnchor.constraint(equalToConstant: 165).isActive=true
        
        homeview.addSubview(snowimage)
        snowimage.topAnchor.constraint(equalTo: carimage.bottomAnchor,constant: 5).isActive=true
        snowimage.leftAnchor.constraint(equalTo: televisionimage.rightAnchor,constant: 5).isActive=true
        snowimage.heightAnchor.constraint(equalToConstant: 115).isActive=true
        snowimage.widthAnchor.constraint(equalToConstant: 165).isActive=true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}


