//
//  MyRegister.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 21/03/22.
//

import UIKit

class MyRegister: UIViewController {
    
    var homeview: UIView = {
        let homeview = UIView()
        return homeview
    }()
    
    var enterlabel: UILabel = {
        let enterlabel = UILabel()
        enterlabel.translatesAutoresizingMaskIntoConstraints=false
        enterlabel.font = UIFont.systemFont(ofSize: 25)
        enterlabel.textColor = UIColor.black
        enterlabel.text = "Enter a code "
        return enterlabel
    }()
    
    var getlabel: UILabel = {
        let getlabel = UILabel()
        getlabel.translatesAutoresizingMaskIntoConstraints=false
        getlabel.font = UIFont.systemFont(ofSize: 11)
        getlabel.textColor = UIColor.systemGray
        getlabel.text = "You shoud start our telegram bot to register and get a code for"
        getlabel.numberOfLines = 2
        return getlabel
    }()
    
    var numberlabel: UILabel = {
        let numberlabel = UILabel()
        numberlabel.translatesAutoresizingMaskIntoConstraints=false
        numberlabel.font = UIFont.systemFont(ofSize: 20)
        numberlabel.textColor = UIColor.black
        numberlabel.text = "+998 93 411 15 99"
        return numberlabel
    }()
    
    var codeField: UITextField = {
        let codeField = UITextField()
        codeField.translatesAutoresizingMaskIntoConstraints=false
        codeField.backgroundColor = UIColor(rgb: 0xF6F7F8)
        codeField.keyboardAppearance = .dark
        codeField.keyboardType = .default
        codeField.textColor = UIColor.black
        codeField.font = UIFont.systemFont(ofSize: 20)
        codeField.layer.cornerRadius = 5
        codeField.textAlignment = .center
        return codeField
    }()
    
    var lunalabel: UILabel = {
        let lunalabel = UILabel()
        lunalabel.translatesAutoresizingMaskIntoConstraints=false
        lunalabel.font = UIFont.systemFont(ofSize: 11)
        lunalabel.textColor = UIColor.black
        lunalabel.text = "If you didn’t get code  go to @luna_bot and register "
        return lunalabel
    }()
    
    var btn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.backgroundColor = UIColor(rgb: 0x7ED321)
        btn.layer.cornerRadius = 15
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitle("Next", for: .normal)
        return btn
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(homeview)
        homeview.frame = view.bounds
        let myRightImage = UIImage(named: "ex_image")?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myRightImage, style: .plain, target: self, action: #selector(addTapped))
        
        homeview.addSubview(enterlabel)
        enterlabel.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 90).isActive=true
        enterlabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        
        homeview.addSubview(getlabel)
        getlabel.topAnchor.constraint(equalTo: enterlabel.bottomAnchor,constant: 20).isActive=true
        getlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 20).isActive=true
        getlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        
        homeview.addSubview(numberlabel)
        numberlabel.topAnchor.constraint(equalTo: getlabel.bottomAnchor,constant: 15).isActive=true
        numberlabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        
        homeview.addSubview(codeField)
        codeField.topAnchor.constraint(equalTo: numberlabel.bottomAnchor,constant: 20).isActive=true
        codeField.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 50).isActive=true
        codeField.heightAnchor.constraint(equalToConstant: 60).isActive=true
        codeField.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -50).isActive=true
        
        homeview.addSubview(lunalabel)
        lunalabel.topAnchor.constraint(equalTo: codeField.bottomAnchor,constant: 20).isActive=true
        lunalabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 50).isActive=true
        lunalabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -50).isActive=true
        
        homeview.addSubview(btn)
        btn.topAnchor.constraint(equalTo: lunalabel.bottomAnchor,constant: 10).isActive=true
        btn.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        btn.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btn.widthAnchor.constraint(equalToConstant: 100).isActive=true
        btn.addTarget(self, action: #selector(pushshingRegisterPage), for: .touchUpInside)
        
    }
    
    @objc func addTapped(){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func pushshingRegisterPage(){
        let controller = Profile()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
