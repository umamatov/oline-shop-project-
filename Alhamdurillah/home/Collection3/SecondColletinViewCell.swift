//
//  SecondColletinViewCell.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 17/03/22.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {

    static let indentifier = "MyCollection234ViewCell"

    
    
    var carimage: UIImageView = {
        let carimage = UIImageView()
        carimage.translatesAutoresizingMaskIntoConstraints=false
        carimage.image = UIImage(named: "car_image")
        carimage.layer.cornerRadius = 30
        carimage.layer.masksToBounds = false
        return carimage
    }()

    
    var textlabel: UILabel = {
        let textlabel = UILabel()
        textlabel.translatesAutoresizingMaskIntoConstraints=false
        textlabel.font = UIFont.systemFont(ofSize: 15)
        textlabel.textColor = UIColor.black
        textlabel.text = "Sale Malibu -2"
        textlabel.numberOfLines = 2
        return textlabel
    }()
    
    var moneylabel: UILabel = {
        let moneylabel = UILabel()
        moneylabel.translatesAutoresizingMaskIntoConstraints=false
        moneylabel.font = UIFont.systemFont(ofSize: 19)
        moneylabel.textColor = UIColor.black
        moneylabel.text = "30 000 c.u."
        return moneylabel
    }()
    
    var asakalabel: UILabel = {
        let asakalabel = UILabel()
        asakalabel.translatesAutoresizingMaskIntoConstraints=false
        asakalabel.font = UIFont.systemFont(ofSize: 13)
        asakalabel.textColor = UIColor.systemGray
        asakalabel.text = "Asaka, Andijan Today, 03:51"
        asakalabel.numberOfLines = 2
        return asakalabel
    }()
    
    var iphonimage: UIImageView = {
        let iphonimage = UIImageView()
        iphonimage.translatesAutoresizingMaskIntoConstraints=false
        iphonimage.image = UIImage(named: "iphon_image")
        iphonimage.layer.cornerRadius = 30
        iphonimage.layer.masksToBounds = false
        return iphonimage
    }()
    
    var maxlabel: UILabel = {
        let maxlabel = UILabel()
        maxlabel.translatesAutoresizingMaskIntoConstraints=false
        maxlabel.font = UIFont.systemFont(ofSize: 15)
        maxlabel.textColor = UIColor.black
        maxlabel.text = "790000 for iPhone 11 Pro MAX 64 GB credit"
        maxlabel.numberOfLines = 3
        return maxlabel
    }()
   
    var manylabel: UILabel = {
        let manylabel = UILabel()
        manylabel.translatesAutoresizingMaskIntoConstraints=false
        manylabel.font = UIFont.systemFont(ofSize: 19)
        manylabel.textColor = UIColor.black
        manylabel.text = "1 100 y.e"
        return manylabel
    }()
    
    var chilonzorlabel: UILabel = {
        let chilonzorlabel = UILabel()
        chilonzorlabel.translatesAutoresizingMaskIntoConstraints=false
        chilonzorlabel.font = UIFont.systemFont(ofSize: 13)
        chilonzorlabel.textColor = UIColor.systemGray
        chilonzorlabel.numberOfLines = 2
        chilonzorlabel.text = "Chilonzor, Tashkent Today, 03:51"
        return chilonzorlabel
    }()
    
   
    
    
    override init(frame: CGRect) {
            super.init(frame: frame)

            addViews()
        }
   
    
    
    
     func addViews() {
       
         contentView.addSubview(carimage)
         carimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
         carimage.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 15).isActive=true
         carimage.layer.cornerRadius = 8
         carimage.layer.masksToBounds = true
        

     
         contentView.addSubview(textlabel)
         textlabel.topAnchor.constraint(equalTo: carimage.bottomAnchor,constant: 3).isActive=true
         textlabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true

         contentView.addSubview(moneylabel)
         moneylabel.topAnchor.constraint(equalTo: textlabel.bottomAnchor,constant: 5).isActive=true
         moneylabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 15).isActive=true

         contentView.addSubview(asakalabel)
         asakalabel.topAnchor.constraint(equalTo: moneylabel.bottomAnchor,constant: 5).isActive=true
         asakalabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 15).isActive=true
         
         contentView.addSubview(iphonimage)
         iphonimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 9).isActive=true
         iphonimage.leftAnchor.constraint(equalTo: carimage.rightAnchor,constant: 15).isActive=true
         iphonimage.layer.cornerRadius = 8
         iphonimage.layer.masksToBounds = true
         
         contentView.addSubview(maxlabel)
         maxlabel.topAnchor.constraint(equalTo: iphonimage.bottomAnchor,constant: 0).isActive=true
         maxlabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
         maxlabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 200).isActive=true
         contentView.addSubview(manylabel)
         manylabel.topAnchor.constraint(equalTo: maxlabel.bottomAnchor,constant: -5).isActive=true
         manylabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 200).isActive=true
         manylabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
         
         contentView.addSubview(chilonzorlabel)
         chilonzorlabel.topAnchor.constraint(equalTo: manylabel.bottomAnchor,constant: -5).isActive=true
         chilonzorlabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 200).isActive=true
         chilonzorlabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
         
         
         
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
