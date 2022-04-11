//
//  Registter.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 21/03/22.
//

import UIKit

class Registter: UIViewController {
    
    let homeview: UIView = {
        var homeview = UIView()
        return homeview
    }()
    
    var startedlabel: UILabel = {
        let startedlabel = UILabel()
        startedlabel.translatesAutoresizingMaskIntoConstraints=false
        startedlabel.font = UIFont.systemFont(ofSize: 25)
        startedlabel.textColor = UIColor.black
        startedlabel.text = "Let’s get started!"
        return startedlabel
    }()
    
    var texlabel: UILabel = {
        let textlabel = UILabel()
        textlabel.translatesAutoresizingMaskIntoConstraints=false
        textlabel.font = UIFont.systemFont(ofSize: 14)
        textlabel.textColor = UIColor.systemGray
        textlabel.text = "In order to sell or buy products, follow stores and profiles. You can create your online store and connect telegram channel to this store "
        textlabel.numberOfLines = 4
        return textlabel
    }()
    
    var field: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints=false
        field.backgroundColor = UIColor(rgb: 0xF6F7F8)
        field.keyboardAppearance = .dark
        field.keyboardType = .default
        field.textColor = UIColor.black
        field.font = UIFont.systemFont(ofSize: 20)
        field.layer.cornerRadius = 5
        field.text = "+ 998 93 411 15 99"
        return  field
    }()
    
    var phonelabel: UILabel = {
        let phonelabel = UILabel()
        phonelabel.translatesAutoresizingMaskIntoConstraints=false
        phonelabel.font = UIFont.systemFont(ofSize: 10)
        phonelabel.textColor = UIColor.systemGray
        phonelabel.text = "Phone number"
        return phonelabel
    }()
    
    var getbtn: UIButton = {
        let getbtn = UIButton()
        getbtn.translatesAutoresizingMaskIntoConstraints=false
        getbtn.backgroundColor = UIColor(rgb: 0x7ED321)
        getbtn.layer.cornerRadius = 8
        getbtn.setTitle("Get code from Telegram", for: .normal)
        getbtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        return getbtn
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(homeview)
        homeview.frame = view.bounds
        let myrightImage = UIImage(named: "ex_image")?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myrightImage, style: .plain, target: self, action: #selector(addTapped))
        
        homeview.addSubview(startedlabel)
        startedlabel.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 90).isActive=true
        startedlabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        
        homeview.addSubview(texlabel)
        texlabel.topAnchor.constraint(equalTo: startedlabel.bottomAnchor,constant: 15).isActive=true
        texlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        texlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        
        homeview.addSubview(field)
        field.topAnchor.constraint(equalTo: texlabel.bottomAnchor,constant: 20).isActive=true
        field.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        field.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        field.heightAnchor.constraint(equalToConstant: 70).isActive=true
        
        field.addSubview(phonelabel)
        phonelabel.topAnchor.constraint(equalTo: field.topAnchor,constant: 3).isActive=true
        phonelabel.leftAnchor.constraint(equalTo: field.leftAnchor,constant: 8).isActive=true
        
        homeview.addSubview(getbtn)
        getbtn.topAnchor.constraint(equalTo: field.bottomAnchor,constant: 60).isActive=true
        getbtn.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        getbtn.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        getbtn.heightAnchor.constraint(equalToConstant: 55).isActive=true
        getbtn.addTarget(self, action: #selector(pushshingRegisterPage), for: .touchUpInside)
        
    }
    
    @objc func pushshingRegisterPage(){
        let controller = MyRegister()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
    @objc func addTapped(){
    navigationController?.popViewController(animated: true)
    
    
    
   }
    
    
}
