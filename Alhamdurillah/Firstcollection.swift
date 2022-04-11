//
//  File.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 21/03/22.
//

import UIKit

class firstCollectionViewCell: UICollectionViewCell {
    
    static let indetifier = "firstCollectionViewCell"

    var homeview: UIView = {
        let homeview = UIView()
        homeview.translatesAutoresizingMaskIntoConstraints=false
        homeview.backgroundColor = UIColor.red
        return homeview
    }()
    
    var carimage: UIImageView = {
        let carimage = UIImageView()
        carimage.translatesAutoresizingMaskIntoConstraints=false
        carimage.image = UIImage(named: "car_image")
        carimage.layer.cornerRadius = 20
        return carimage
    }()
    
    var phoneimage: UIImageView = {
        let phoneimage = UIImageView()
        phoneimage.translatesAutoresizingMaskIntoConstraints=false
        phoneimage.image = UIImage(named: "iphon_image")
        phoneimage.layer.cornerRadius = 30
        return phoneimage
    }()
    
    var hilabel: UILabel = {
        let hilabel = UILabel()
        hilabel.translatesAutoresizingMaskIntoConstraints=false
        hilabel.font = UIFont.systemFont(ofSize: 12)
        hilabel.textColor = UIColor.systemGray
        hilabel.text = "Hi-tech corner in Andijan"
        hilabel.numberOfLines = 2
        return hilabel
    }()
    
    var anjanlabel: UILabel = {
        let anjanlabel = UILabel()
        anjanlabel.translatesAutoresizingMaskIntoConstraints=false
        anjanlabel.font = UIFont.systemFont(ofSize: 12)
        anjanlabel.textColor = UIColor.systemGray
        anjanlabel.text = "Hi-tech corner in Andijan"
        anjanlabel.numberOfLines = 2
        return anjanlabel
    }()
    
    var monylabel: UILabel = {
        let monykabel = UILabel()
        monykabel.translatesAutoresizingMaskIntoConstraints=false
        monykabel.font = UIFont.systemFont(ofSize: 19)
        monykabel.textColor = UIColor.black
        monykabel.text = "2 400 000 sum"
        return monykabel
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 20)
        alertlabel.textColor = UIColor.black
        alertlabel.text = "2 400 000 sum"
        return alertlabel
    }()
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        contentView.addSubview(homeview)
        homeview.frame = contentView.bounds
        
        homeview.addSubview(carimage)
        carimage.topAnchor.constraint(equalTo: homeview.bottomAnchor,constant: 0).isActive=true
        carimage.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        carimage.heightAnchor.constraint(equalToConstant: 200).isActive=true
        carimage.widthAnchor.constraint(equalToConstant: 150).isActive=true
        
        homeview.addSubview(phoneimage)
        phoneimage.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 0).isActive=true
        phoneimage.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -2).isActive=true
        phoneimage.heightAnchor.constraint(equalToConstant: 200).isActive=true
        phoneimage.widthAnchor.constraint(equalToConstant: 150).isActive=true
        phoneimage.layer.cornerRadius = 8
        
        homeview.addSubview(hilabel)
        hilabel.topAnchor.constraint(equalTo: carimage.bottomAnchor,constant: 5).isActive=true
        hilabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        
        homeview.addSubview(anjanlabel)
        anjanlabel.topAnchor.constraint(equalTo: phoneimage.bottomAnchor,constant: 5).isActive=true
        anjanlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -2).isActive=true
        
        homeview.addSubview(monylabel)
        monylabel.topAnchor.constraint(equalTo: hilabel.bottomAnchor,constant: 10).isActive=true
        monylabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        
        homeview.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: anjanlabel.bottomAnchor,constant: 10).isActive=true
        alertlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}





