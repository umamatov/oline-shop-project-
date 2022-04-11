//
//  StoriesCollectionViewCell.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 17/03/22.
//

import Foundation
import UIKit

class StoriesCollectionViewCell: UICollectionViewCell {

    static let indentifier = "MyCollection234ViewCell"

    
    
    var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints=false
        image.image = UIImage(named: "lisen_image")
        image.layer.cornerRadius = 30
        image.layer.masksToBounds = false
        return image
    }()
 
    var imageCustomView: UIView = {
        let imageCustomView = UIView()
        imageCustomView.translatesAutoresizingMaskIntoConstraints=false
        return imageCustomView
    }()
    
    var followBtn: UIButton = {
        let followBtn = UIButton()
        followBtn.layer.borderWidth=1
        followBtn.layer.borderColor=UIColor.systemGreen.cgColor
        followBtn.setTitle("Follow", for: .normal)
        followBtn.setTitleColor(UIColor.systemGreen, for: .normal)
        followBtn.translatesAutoresizingMaskIntoConstraints=false
        return followBtn
    }()
    
    var moneylabel: UILabel = {
        let moneylabel = UILabel()
        moneylabel.translatesAutoresizingMaskIntoConstraints=false
        moneylabel.font = UIFont.systemFont(ofSize: 16)
        moneylabel.textColor = UIColor.black
        moneylabel.text = "Beats is a leading retail chain..."
        moneylabel.numberOfLines=2
        return moneylabel
    }()
    
       var textlabel: UILabel = {
           let textlabel = UILabel()
           textlabel.translatesAutoresizingMaskIntoConstraints=false
           textlabel.font = UIFont.systemFont(ofSize: 14)
           textlabel.textColor = UIColor.systemGray
           textlabel.text = "Shopping market"
           return textlabel
       }()
    
    var linebtn: UIButton = {
        let linebtn = UIButton()
        linebtn.translatesAutoresizingMaskIntoConstraints=false
        linebtn.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return linebtn
    }()
    
    var settview: UIView = {
        let settview = UIView()
        settview.translatesAutoresizingMaskIntoConstraints=false
        return settview
    }()
    
    var texnoimage: UIImageView = {
        let texnoimage = UIImageView()
        texnoimage.translatesAutoresizingMaskIntoConstraints=false
        texnoimage.image = UIImage(named: "texnomart_image")
        texnoimage.layer.cornerRadius = 30
        texnoimage.layer.masksToBounds = false
        return texnoimage
    }()
    
    var firstbtn: UIButton = {
        let firstbtn = UIButton()
        firstbtn.translatesAutoresizingMaskIntoConstraints=false
        firstbtn.layer.borderWidth = 1
        firstbtn.setTitle("Follow", for: .normal)
        firstbtn.setTitleColor(UIColor.systemGreen, for: .normal)
        firstbtn.layer.borderColor = UIColor.systemGreen.cgColor
        return firstbtn
    }()
    
    var texnlabel: UILabel = {
        let texnlabel = UILabel()
        texnlabel.translatesAutoresizingMaskIntoConstraints=false
        texnlabel.font = UIFont.systemFont(ofSize: 16)
        texnlabel.textColor = UIColor.black
        texnlabel.numberOfLines = 2
        texnlabel.text = "Texnomart is a leading retail chain..."
        return texnlabel
    }()
    
    var shoplabel: UILabel = {
        let shoplabel = UILabel()
        shoplabel.translatesAutoresizingMaskIntoConstraints=false
        shoplabel.font = UIFont.systemFont(ofSize: 14)
        shoplabel.textColor = UIColor.systemGray
        shoplabel.text = "Shopping market"
        return shoplabel
    }()
    
    var chizbtn: UIButton = {
        let chizbtn = UIButton()
        chizbtn.translatesAutoresizingMaskIntoConstraints=false
        chizbtn.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return chizbtn
    }()
    
    var badview: UIView = {
        let badview = UIView()
        badview.translatesAutoresizingMaskIntoConstraints=false
        return badview
    }()
    
    var miimage: UIImageView = {
        let miimage = UIImageView()
        miimage.translatesAutoresizingMaskIntoConstraints=false
        miimage.image = UIImage(named: "mi_image")
        miimage.layer.cornerRadius = 30
        miimage.layer.masksToBounds = false
        return miimage
    }()
    
    var secondbtn: UIButton = {
        let secondbtn = UIButton()
        secondbtn.translatesAutoresizingMaskIntoConstraints=false
        secondbtn.layer.borderWidth = 1
        secondbtn.setTitleColor(UIColor.systemGreen, for: .normal)
        secondbtn.layer.borderColor = UIColor.systemGreen.cgColor
        secondbtn.setTitle("Follow", for: .normal)
        return secondbtn
    }()
    
    var mistoreslabel: UILabel = {
        let mistoreslabel = UILabel()
        mistoreslabel.translatesAutoresizingMaskIntoConstraints=false
        mistoreslabel.font = UIFont.systemFont(ofSize: 16)
        mistoreslabel.textColor = UIColor.black
        mistoreslabel.text = "Mi Store - all mi brand products"
        return mistoreslabel
    }()
    
    var smartphonlabel: UILabel = {
        let smartphonlabel = UILabel()
        smartphonlabel.translatesAutoresizingMaskIntoConstraints=false
        smartphonlabel.font = UIFont.systemFont(ofSize: 14)
        smartphonlabel.textColor = UIColor.systemGray
        smartphonlabel.text = "Smartphones & Computers"
        return smartphonlabel
    }()
    
    
    
    
    override init(frame: CGRect) {
            super.init(frame: frame)

            addViews()
        }
   
    
    
    
     func addViews() {
         
         contentView.addSubview(imageCustomView)
         imageCustomView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive=true
         imageCustomView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 125).isActive=true
         imageCustomView.heightAnchor.constraint(equalToConstant: 80).isActive=true
         imageCustomView.widthAnchor.constraint(equalToConstant: 350).isActive=true
         imageCustomView.backgroundColor = UIColor.clear
         imageCustomView.layer.cornerRadius=5
                  
         imageCustomView.addSubview(image)
         image.leftAnchor.constraint(equalTo: imageCustomView.leftAnchor, constant: 5).isActive=true
         image.bottomAnchor.constraint(equalTo: imageCustomView.bottomAnchor, constant: -10).isActive=true
         image.topAnchor.constraint(equalTo: imageCustomView.topAnchor, constant: 10).isActive=true
         image.widthAnchor.constraint(equalToConstant: 60).isActive=true
         image.layer.masksToBounds = true
         image.layer.cornerRadius=5
     
         
         
         imageCustomView.addSubview(followBtn)
         followBtn.rightAnchor.constraint(equalTo: imageCustomView.rightAnchor, constant: -10).isActive=true
         followBtn.topAnchor.constraint(equalTo: imageCustomView.topAnchor, constant: 10).isActive=true
         followBtn.heightAnchor.constraint(equalToConstant: 40).isActive=true
         followBtn.widthAnchor.constraint(equalToConstant: 60).isActive=true
         followBtn.layer.cornerRadius=5
         
         imageCustomView.addSubview(moneylabel)
         moneylabel.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10).isActive=true
         moneylabel.topAnchor.constraint(equalTo: imageCustomView.topAnchor, constant: 10).isActive=true
         moneylabel.rightAnchor.constraint(equalTo: followBtn.leftAnchor, constant: -10).isActive=true
         
         imageCustomView.addSubview(textlabel)
         textlabel.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10).isActive=true
         textlabel.bottomAnchor.constraint(equalTo: imageCustomView.bottomAnchor, constant: -10).isActive=true
         textlabel.rightAnchor.constraint(equalTo: followBtn.leftAnchor, constant: -10).isActive=true
         
         contentView.addSubview(linebtn)
         linebtn.topAnchor.constraint(equalTo: textlabel.bottomAnchor, constant: 5).isActive=true
         linebtn.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 85).isActive=true
         linebtn.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -1).isActive=true
         linebtn.heightAnchor.constraint(equalToConstant: 1).isActive=true
         
         contentView.addSubview(settview)
         settview.topAnchor.constraint(equalTo: linebtn.bottomAnchor,constant: 10).isActive=true
         settview.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
         settview.heightAnchor.constraint(equalToConstant: 80).isActive=true
         settview.widthAnchor.constraint(equalToConstant: 350).isActive=true
         settview.layer.cornerRadius = 5
         settview.backgroundColor = UIColor.clear
         
         settview.addSubview(texnoimage)
         texnoimage.topAnchor.constraint(equalTo: settview.topAnchor,constant: 10).isActive=true
         texnoimage.bottomAnchor.constraint(equalTo: settview.bottomAnchor,constant: -10).isActive=true
         texnoimage.leftAnchor.constraint(equalTo: settview.leftAnchor,constant: 5).isActive=true
         texnoimage.widthAnchor.constraint(equalToConstant: 60).isActive=true
         texnoimage.layer.masksToBounds = true
         texnoimage.layer.cornerRadius = 5
         
         settview.addSubview(firstbtn)
         firstbtn.topAnchor.constraint(equalTo: settview.topAnchor,constant: 10).isActive=true
         firstbtn.rightAnchor.constraint(equalTo: settview.rightAnchor,constant: -10).isActive=true
         firstbtn.heightAnchor.constraint(equalToConstant: 40).isActive=true
         firstbtn.widthAnchor.constraint(equalToConstant: 60).isActive=true
         firstbtn.layer.cornerRadius = 5
         
         settview.addSubview(texnlabel)
         texnlabel.topAnchor.constraint(equalTo: settview.topAnchor,constant: 10).isActive=true
         texnlabel.leftAnchor.constraint(equalTo: texnoimage.rightAnchor,constant: 10).isActive=true
         texnlabel.rightAnchor.constraint(equalTo: firstbtn.leftAnchor,constant: -10).isActive=true
         
         settview.addSubview(shoplabel)
         shoplabel.bottomAnchor.constraint(equalTo: settview.bottomAnchor,constant: -10).isActive=true
         shoplabel.leftAnchor.constraint(equalTo: texnoimage.rightAnchor,constant: 10).isActive=true
         shoplabel.rightAnchor.constraint(equalTo: firstbtn.leftAnchor,constant: -10).isActive=true
         
         contentView.addSubview(chizbtn)
         chizbtn.topAnchor.constraint(equalTo: settview.bottomAnchor,constant: 0).isActive=true
         chizbtn.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 85).isActive=true
         chizbtn.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -1).isActive=true
         chizbtn.heightAnchor.constraint(equalToConstant: 1).isActive=true
         
         contentView.addSubview(badview)
         badview.topAnchor.constraint(equalTo: chizbtn.bottomAnchor,constant: 5).isActive=true
         badview.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
         badview.heightAnchor.constraint(equalToConstant: 80).isActive=true
         badview.widthAnchor.constraint(equalToConstant: 350).isActive=true
         badview.layer.cornerRadius = 5
         badview.backgroundColor = UIColor.clear

         badview.addSubview(miimage)
         miimage.topAnchor.constraint(equalTo: badview.topAnchor,constant: 10).isActive=true
         miimage.bottomAnchor.constraint(equalTo: badview.bottomAnchor,constant: -10).isActive=true
         miimage.leftAnchor.constraint(equalTo: badview.leftAnchor,constant: 5).isActive=true
         miimage.widthAnchor.constraint(equalToConstant: 60).isActive=true
         miimage.layer.cornerRadius = 5
         miimage.layer.masksToBounds = true
         
         badview.addSubview(secondbtn)
         secondbtn.topAnchor.constraint(equalTo: badview.topAnchor,constant: 10).isActive=true
         secondbtn.rightAnchor.constraint(equalTo: badview.rightAnchor,constant: -10).isActive=true
         secondbtn.heightAnchor.constraint(equalToConstant: 40).isActive=true
         secondbtn.widthAnchor.constraint(equalToConstant: 60).isActive=true
         secondbtn.layer.cornerRadius = 5
         
         badview.addSubview(mistoreslabel)
         mistoreslabel.topAnchor.constraint(equalTo: badview.topAnchor,constant: 10).isActive=true
         mistoreslabel.leftAnchor.constraint(equalTo: miimage.rightAnchor,constant: 10).isActive=true
         mistoreslabel.rightAnchor.constraint(equalTo: secondbtn.leftAnchor,constant: -10).isActive=true
         
         badview.addSubview(smartphonlabel)
         smartphonlabel.topAnchor.constraint(equalTo: mistoreslabel.bottomAnchor,constant: 10).isActive=true
         smartphonlabel.leftAnchor.constraint(equalTo: miimage.rightAnchor,constant: 10).isActive=true
         smartphonlabel.rightAnchor.constraint(equalTo: secondbtn.leftAnchor,constant: -10).isActive=true
         
         
         
         
         
    
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
