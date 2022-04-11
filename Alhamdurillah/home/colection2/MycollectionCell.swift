//
//  Mycollectioncell.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 17/03/22.
//

import UIKit

class MycollectionCell: UITableViewCell {
    
    static let identifier = "MycollectionCell"
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .white
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        

        
        let subView = TopStoriesCollectionView(frame: .zero, collectionViewLayout: layout)

        self.contentView.addSubview(subView)

        let constraints = [
            subView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            subView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            subView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            subView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0)
        ]

        NSLayoutConstraint.activate(constraints)

        subView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
