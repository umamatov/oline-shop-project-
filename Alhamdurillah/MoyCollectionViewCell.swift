//
//  MoyCollectionViewCell.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 18/03/22.
//


import UIKit

class MoyCollectionViewCell: UICollectionViewCell {

    static let indentifier = "MoyCollection234ViewCell"

    
    
    var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints=false
        image.image = UIImage(named: "bedroom_image")
        image.layer.cornerRadius = 30
        image.layer.masksToBounds = false
        return image
    }()
    
    var product: UIImageView = {
        let product = UIImageView()
        product.translatesAutoresizingMaskIntoConstraints=false
        product.image = UIImage(named: "product_image")
        
        return product
    }()
    
    var textlabel: UILabel = {
        let textlabel = UILabel()
        textlabel.translatesAutoresizingMaskIntoConstraints=false
        textlabel.font = UIFont.systemFont(ofSize: 15)
        textlabel.textColor = UIColor.black
        textlabel.text = "Hi-tech corner in Andijan"
        textlabel.numberOfLines = 2
        return textlabel
    }()
    
    var moneylabel: UILabel = {
        let moneylabel = UILabel()
        moneylabel.translatesAutoresizingMaskIntoConstraints=false
        moneylabel.font = UIFont.systemFont(ofSize: 19)
        moneylabel.textColor = UIColor.black
        moneylabel.text = "2 400 000 sum"
        return moneylabel
    }()
    
    
    
    override init(frame: CGRect) {
            super.init(frame: frame)

            addViews()
        }
   
    
    
    
     func addViews() {
        contentView.addSubview(image)
//        image.heightAnchor.constraint(equalToConstant: 110).isActive=true
//        image.widthAnchor.constraint(equalToConstant: 110).isActive=true
        self.image.layer.masksToBounds = true
        self.image.layer.cornerRadius = 10
         image.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
         image.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
         

     
         contentView.addSubview(textlabel)
         textlabel.topAnchor.constraint(equalTo: image.bottomAnchor,constant: 3).isActive=true
         textlabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
         textlabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -5).isActive=true

         contentView.addSubview(moneylabel)
         moneylabel.topAnchor.constraint(equalTo: textlabel.bottomAnchor,constant: 5).isActive=true
         moneylabel.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
         
         
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
