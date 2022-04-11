//
//  AllProductViewController.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 22/03/22.
//

import UIKit

class AllProductViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource {

    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    let tableView = UITableView()
    
    lazy var searchController: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.tintColor = .white
//            s.searchBar.searchBarStyle = .promine
        searchBar.showsCancelButton = false
        return searchBar
    }()
    
    let homeview: UIView = {
        var homeview = UIView()
        return homeview
    }()
    
    
    var texnolabel: UILabel = {
        let texnolabel = UILabel()
        texnolabel.translatesAutoresizingMaskIntoConstraints=false
        texnolabel.font = UIFont.systemFont(ofSize: 25)
        texnolabel.textColor = UIColor.black
        texnolabel.text = "Texnomart"
        return texnolabel
    }()
    
    var imageview: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints=false
        imageview.image = UIImage(named: "texno_image")
        return imageview
    }()
    
    var product: UILabel = {
        let product = UILabel()
        product.translatesAutoresizingMaskIntoConstraints=false
        product.font = UIFont.systemFont(ofSize: 14)
        product.textColor = UIColor.systemGray
        product.text = "2,476 products"
        return product
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 20)
        alertlabel.textColor = UIColor.systemGray
        alertlabel.text = "Home"
        return alertlabel
    }()
    
    var alllabel: UILabel = {
        let alllabel = UILabel()
        alllabel.translatesAutoresizingMaskIntoConstraints=false
        alllabel.font = UIFont.systemFont(ofSize: 20)
        alllabel.textColor = UIColor.black
        alllabel.text = "All Products"
        return alllabel
    }()
    
    var postlabel: UILabel = {
        let postlabel = UILabel()
        postlabel.translatesAutoresizingMaskIntoConstraints=false
        postlabel.font = UIFont.systemFont(ofSize: 20)
        postlabel.textColor = UIColor.systemGray
        postlabel.text = "Posts"
        return postlabel
    }()
    
    var aboutlabel: UILabel = {
        let aboutlabel = UILabel()
        aboutlabel.translatesAutoresizingMaskIntoConstraints=false
        aboutlabel.font = UIFont.systemFont(ofSize: 20)
        aboutlabel.textColor = UIColor.systemGray
        aboutlabel.text = "About"
        return aboutlabel
    }()
    
    var lineview: UIView = {
        let lineview = UIView()
        lineview.translatesAutoresizingMaskIntoConstraints=false
        lineview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return lineview
    }()
    
    var customview: UITableView = {
        let customview = UITableView()
        customview.translatesAutoresizingMaskIntoConstraints=false
        customview.backgroundColor = UIColor.white
        return customview
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = searchController
        view.backgroundColor = .white
        view.addSubview(customview)
        tableView.delegate = self
        tableView.dataSource = self
        customview.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.contentInset = UIEdgeInsets (top: 0, left: 0, bottom: 50, right: 0)
        let myRigthImage = UIImage(named: "filter")?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myRigthImage, style: .plain, target: self, action: #selector(addTapped))
        
        view.addSubview(texnolabel)
        texnolabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 100).isActive=true
        texnolabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 15).isActive=true
        
        view.addSubview(imageview)
        imageview.topAnchor.constraint(equalTo: view.topAnchor,constant: 100).isActive=true
        imageview.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -15).isActive=true
        
        view.addSubview(product)
        product.topAnchor.constraint(equalTo: texnolabel.bottomAnchor,constant: 0).isActive=true
        product.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 15).isActive=true
        
        view.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: product.bottomAnchor,constant: 20).isActive=true
        alertlabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 15).isActive=true
        
        view.addSubview(alllabel)
        alllabel.topAnchor.constraint(equalTo: product.bottomAnchor,constant: 20).isActive=true
        alllabel.leftAnchor.constraint(equalTo: alertlabel.rightAnchor,constant: 10).isActive=true
        
        view.addSubview(postlabel)
        postlabel.topAnchor.constraint(equalTo: product.bottomAnchor,constant: 20).isActive=true
        postlabel.leftAnchor.constraint(equalTo: alllabel.rightAnchor,constant: 10).isActive=true
        
        view.addSubview(aboutlabel)
        aboutlabel.topAnchor.constraint(equalTo: product.bottomAnchor,constant: 20).isActive=true
        aboutlabel.leftAnchor.constraint(equalTo: postlabel.rightAnchor,constant: 10).isActive=true
        
        view.addSubview(lineview)
        lineview.topAnchor.constraint(equalTo: alertlabel.bottomAnchor,constant: 5).isActive=true
        lineview.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 0).isActive=true
        lineview.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -0).isActive=true
        lineview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        view.addSubview(customview)
        customview.topAnchor.constraint(equalTo: lineview.bottomAnchor,constant: 10).isActive=true
        customview.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 0).isActive=true
        customview.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -0).isActive=true
        customview.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 10).isActive=true
        
        
        
    }
    
    @objc func addTapped(){
        navigationController?.popViewController(animated: true)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = customview.bounds
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "TableCell7"
        tableView.register(TableViewCell7.self, forCellReuseIdentifier: cellId)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TableViewCell7
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height/1.9
    }
}
