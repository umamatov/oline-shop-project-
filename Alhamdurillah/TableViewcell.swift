//
//  TableViewcell.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 22/03/22.
//

import UIKit

class TableViewCell7: UITableViewCell {

    var laptopimag: UIImageView = {
        let laptoplabel = UIImageView()
        laptoplabel.translatesAutoresizingMaskIntoConstraints=false
        laptoplabel.image = UIImage(named: "laptop_image")
        laptoplabel.layer.cornerRadius = 20
        laptoplabel.layer.masksToBounds = false
        return laptoplabel
    }()
    
    var planshedimage: UIImageView = {
        let planshedimage = UIImageView()
        planshedimage.translatesAutoresizingMaskIntoConstraints=false
        planshedimage.image = UIImage(named: "planshed_image")
        planshedimage.layer.masksToBounds = false
        planshedimage.layer.cornerRadius = 20
        return planshedimage
    }()
    
    var textlabel: UILabel = {
        let textlabel = UILabel()
        textlabel.translatesAutoresizingMaskIntoConstraints=false
        textlabel.font = UIFont.systemFont(ofSize: 14)
        textlabel.textColor = UIColor.black
        textlabel.text = "Acer Aspire 5 Slim Laptop, 15.6 inches Full HD IPS Display, AMD Ryzen 3 3200U, Vega 3 Graphics, 4GB DDR4, 128GB SSD, Backlit ..."
        textlabel.numberOfLines = 8
        return textlabel
    }()
    
    var monylabel: UILabel = {
        let monylabel = UILabel()
        monylabel.translatesAutoresizingMaskIntoConstraints=false
        monylabel.font = UIFont.systemFont(ofSize: 20)
        monylabel.textColor = UIColor.black
        monylabel.text = "2 400 000 sum"
        return monylabel
    }()
    
    var toshkenlabel: UILabel = {
        let toshkenlabel = UILabel()
        toshkenlabel.translatesAutoresizingMaskIntoConstraints=false
        toshkenlabel.font = UIFont.systemFont(ofSize: 13)
        toshkenlabel.textColor = UIColor.systemGray
        toshkenlabel.text = "Chilonzor, Tashkent Today, 03:51"
        toshkenlabel.numberOfLines = 4
        return toshkenlabel
    }()
    
    var lineview: UIView = {
        let lineview = UIView()
        lineview.translatesAutoresizingMaskIntoConstraints=false
        lineview.backgroundColor = UIColor(rgb: 0xEEEEEE)
        return lineview
    }()
    
    var playlabel: UILabel = {
        let playlabel = UILabel()
        playlabel.translatesAutoresizingMaskIntoConstraints=false
        playlabel.font = UIFont.systemFont(ofSize: 14)
        playlabel.textColor = UIColor.black
        playlabel.text = "Acer Aspire 5 Slim Laptop, 15.6 inches Full HD IPS Display"
        playlabel.numberOfLines = 4
        return playlabel
    }()
    
    var dollorlabel: UILabel = {
        let dollorlabel = UILabel()
        dollorlabel.translatesAutoresizingMaskIntoConstraints=false
        dollorlabel.font = UIFont.systemFont(ofSize: 20)
        dollorlabel.textColor = UIColor.black
        dollorlabel.text = "$ 548.00"
        return dollorlabel
    }()
    
    var todaylabel: UILabel = {
        let todaylabel = UILabel()
        todaylabel.translatesAutoresizingMaskIntoConstraints=false
        todaylabel.font = UIFont.systemFont(ofSize: 13)
        todaylabel.textColor = UIColor.systemGray
        todaylabel.numberOfLines = 4
        todaylabel.text = "Chilonzor, Tashkent Today, 03:51"
        return todaylabel
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(laptopimag)
        laptopimag.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        laptopimag.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        laptopimag.heightAnchor.constraint(equalToConstant: 150).isActive=true
        laptopimag.widthAnchor.constraint(equalToConstant: 150).isActive=true
        laptopimag.layer.cornerRadius = 5
        laptopimag.layer.masksToBounds = true
        
        contentView.addSubview(lineview)
        lineview.topAnchor.constraint(equalTo: laptopimag.bottomAnchor,constant: 10).isActive=true
        lineview.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        lineview.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
        lineview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        contentView.addSubview(planshedimage)
        planshedimage.topAnchor.constraint(equalTo: laptopimag.bottomAnchor,constant: 20).isActive=true
        planshedimage.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        planshedimage.heightAnchor.constraint(equalToConstant: 150).isActive=true
        planshedimage.widthAnchor.constraint(equalToConstant: 150).isActive=true
        planshedimage.layer.masksToBounds = true
        planshedimage.layer.cornerRadius = 5
        
        contentView.addSubview(textlabel)
        textlabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        textlabel.leftAnchor.constraint(equalTo: laptopimag.rightAnchor,constant: 10).isActive=true
        textlabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -5).isActive=true
        
        contentView.addSubview(monylabel)
        monylabel.topAnchor.constraint(equalTo: textlabel.bottomAnchor,constant: 5).isActive=true
        monylabel.leftAnchor.constraint(equalTo: laptopimag.rightAnchor,constant: 10).isActive=true
        
        contentView.addSubview(toshkenlabel)
        toshkenlabel.topAnchor.constraint(equalTo: monylabel.bottomAnchor,constant: 5).isActive=true
        toshkenlabel.leftAnchor.constraint(equalTo: laptopimag.rightAnchor,constant: 10).isActive=true
        toshkenlabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -50).isActive=true
        
        contentView.addSubview(playlabel)
        playlabel.topAnchor.constraint(equalTo: toshkenlabel.bottomAnchor,constant: 20).isActive=true
        playlabel.leftAnchor.constraint(equalTo: planshedimage.rightAnchor,constant: 10).isActive=true
        playlabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
    
        contentView.addSubview(dollorlabel)
        dollorlabel.topAnchor.constraint(equalTo: playlabel.bottomAnchor,constant: 30).isActive=true
        dollorlabel.leftAnchor.constraint(equalTo: planshedimage.rightAnchor,constant: 10).isActive=true
    
        contentView.addSubview(todaylabel)
        todaylabel.topAnchor.constraint(equalTo: dollorlabel.bottomAnchor,constant: 13).isActive=true
        todaylabel.leftAnchor.constraint(equalTo: planshedimage.rightAnchor,constant: 10).isActive=true
        todaylabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -50).isActive=true
    
    
    
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
