//
//  UCollectionCell.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 18/03/22.
//

import UIKit

class UCollectionCell: UITableViewCell {
 
    static let identifier = "UCollectionCell2"
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .white
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        

        
        let subView = ICustomCollectionView(frame: .zero, collectionViewLayout: layout)

        self.contentView.addSubview(subView)

        let constraints = [
            subView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 1),
            subView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 1),
            subView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 1),
            subView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 1)
        ]

        NSLayoutConstraint.activate(constraints)

        subView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
