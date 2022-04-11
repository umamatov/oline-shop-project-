//
//  ProfileViewController.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 16/03/22.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    let tableView = UITableView()

    var rightimage: UIImageView = {
        let rightimage = UIImageView()
        rightimage.translatesAutoresizingMaskIntoConstraints=false
        rightimage.image = UIImage(named: "right_image")
        return rightimage
    }()
    
    var countryimage: UIImageView = {
        let countryimage = UIImageView()
        countryimage.translatesAutoresizingMaskIntoConstraints=false
        countryimage.image = UIImage(named: "country_image")
        return countryimage
    }()
    
    var homeview: UIView = {
        let homeview = UIView()
        homeview.translatesAutoresizingMaskIntoConstraints=false
        homeview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        homeview.layer.cornerRadius = 30
        homeview.layer.masksToBounds = false
        return homeview
    }()
    
    var singlabel: UILabel = {
        let singlabel = UILabel()
        singlabel.translatesAutoresizingMaskIntoConstraints=false
        singlabel.font = UIFont.systemFont(ofSize: 18)
        singlabel.textColor = UIColor.black
        singlabel.text = "Sign in or Register"
        return singlabel
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 14)
        alertlabel.textColor = UIColor.systemGray
        alertlabel.text = "In order to sell or buy products, follow stores and profiles. You can create your online store and connect telegram channel to this store "
        alertlabel.numberOfLines = 3
        return alertlabel
    }()
    
    var registerbtn: UIButton = {
        let registerbtn = UIButton()
        registerbtn.translatesAutoresizingMaskIntoConstraints=false
        registerbtn.layer.cornerRadius = 8
        registerbtn.backgroundColor = UIColor(rgb: 0x7ED321)
        registerbtn.setTitle("Sign in or Register", for: .normal)
        return registerbtn
    }()
  
    var customView: UITableView = {
        let customView =  UITableView()
        customView.translatesAutoresizingMaskIntoConstraints=false
        customView.backgroundColor = UIColor.white
        return customView
    }()
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor(rgb: 0xffEEF0F5)
        view.addSubview(customView)
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        tableView.delegate=self
        tableView.dataSource=self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        customView.addSubview(tableView)
        tableView.contentInset=UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
//        self.scrollView.bounces = false
//        self.tableView.bounces = true
        
        
        
        
        view.addSubview(rightimage)
        rightimage.topAnchor.constraint(equalTo: view.topAnchor,constant: 40).isActive=true
        rightimage.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive=true
        
        view.addSubview(countryimage)
        countryimage.topAnchor.constraint(equalTo: view.topAnchor,constant: 40).isActive=true
        countryimage.rightAnchor.constraint(equalTo: rightimage.leftAnchor,constant: -10).isActive=true
        
        view.addSubview(homeview)
        homeview.topAnchor.constraint(equalTo: countryimage.bottomAnchor,constant: 20).isActive=true
        homeview.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10).isActive=true
        homeview.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive=true
        homeview.heightAnchor.constraint(equalToConstant: 150).isActive=true
        homeview.widthAnchor.constraint(equalToConstant: 200).isActive=true
        homeview.layer.masksToBounds = true
        homeview.layer.cornerRadius = 10
   
        homeview.addSubview(singlabel)
        singlabel.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 15).isActive=true
        singlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        
        homeview.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: singlabel.bottomAnchor,constant: 10).isActive=true
        alertlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        alertlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        
        homeview.addSubview(registerbtn)
        registerbtn.topAnchor.constraint(equalTo: alertlabel.bottomAnchor,constant: 10).isActive=true
        registerbtn.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        registerbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        registerbtn.widthAnchor.constraint(equalToConstant: 200).isActive=true
        registerbtn.addTarget(self, action: #selector(pushshingRegisterPage), for: .touchUpInside)
        
        view.addSubview(customView)
        customView.topAnchor.constraint(equalTo: homeview.bottomAnchor,constant: 10).isActive=true
        customView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -30).isActive=true
        customView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 0).isActive=true
        customView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -0).isActive=true
    }
    
    @objc func pushshingRegisterPage(){
        let controller = Registter()
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = customView.bounds
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "CustomCell"
        tableView.register(CustomOrderCell1.self, forCellReuseIdentifier: cellId)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CustomOrderCell1
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    


}


