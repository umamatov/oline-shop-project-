//
//  File.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 19/03/22.
//


import UIKit

class CustomOrderCell1: UITableViewCell{

    var workbtn: UIButton = {
        let workbtn = UIButton()
        workbtn.translatesAutoresizingMaskIntoConstraints=false
        workbtn.setImage(UIImage(named: "rightt_image"), for: .normal)
        return workbtn
    }()

    var timeLabel: UILabel = {
        let timeLabel = UILabel()
        timeLabel.translatesAutoresizingMaskIntoConstraints=false
        timeLabel.font=UIFont.systemFont(ofSize: 15)
        timeLabel.textColor=UIColor.black
        timeLabel.text="Date,time of order"
        return timeLabel
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(timeLabel)
        timeLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0).isActive=true
        timeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15).isActive=true

        contentView.addSubview(workbtn)
        workbtn.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0).isActive=true
        workbtn.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -15).isActive=true

        
        
        
    
    
}
   required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
   }

}
