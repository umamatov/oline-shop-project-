//
//  Register.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 21/03/22.
//

import UIKit

class Register: UIViewController, UISearchResultsUpdating, UISearchBarDelegate, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    var collectionView: UICollectionView?
    
    lazy var searchController: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.tintColor = .white
//            s.searchBar.searchBarStyle = .promine
        searchBar.showsCancelButton = false
        return searchBar
    }()
    
    
    let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeigth = screensize.height
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 10, width: screenWidth, height: screenHeigth))
        scrollView.contentSize = CGSize(width: screenWidth, height: 5000)
        return scrollView
    }()
    
    let homeview: UIView = {
        let homeview = UIView()
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
    
    var productlabel: UILabel = {
        let productlabel = UILabel()
        productlabel.translatesAutoresizingMaskIntoConstraints=false
        productlabel.font = UIFont.systemFont(ofSize: 15)
        productlabel.textColor = UIColor.systemGray
        productlabel.text = "2,476 products"
        return productlabel
    }()
    
    var teximage: UIImageView = {
        let teximage = UIImageView()
        teximage.translatesAutoresizingMaskIntoConstraints=false
        teximage.image = UIImage(named: "texno_image")
        return teximage
    }()
    
    var Homebtn: UIButton = {
        let Homebtn = UIButton()
        Homebtn.translatesAutoresizingMaskIntoConstraints=false
        Homebtn.setTitle("Home", for: .normal)
        Homebtn.setTitleColor(UIColor.black, for: .normal)
        Homebtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        return Homebtn
    }()
    
    var allbtn: UIButton = {
        let allbtn = UIButton()
        allbtn.translatesAutoresizingMaskIntoConstraints=false
        allbtn.setTitle("All Products", for: .normal)
        allbtn.setTitleColor(UIColor.systemGray, for: .normal)
        allbtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        return allbtn
    }()
    
    var postbtn: UIButton = {
        let postbtn = UIButton()
        postbtn.translatesAutoresizingMaskIntoConstraints=false
        postbtn.setTitle("Posts", for: .normal)
        postbtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        postbtn.setTitleColor(UIColor.systemGray, for: .normal)
        return postbtn
    }()
    
    var aboutbtn: UIButton = {
        let aboutbtn = UIButton()
        aboutbtn.translatesAutoresizingMaskIntoConstraints=false
        aboutbtn.setTitleColor(UIColor.systemGray, for: .normal)
        aboutbtn.setTitle("About", for: .normal)
        aboutbtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        return aboutbtn
    }()
    
    var lineview: UIView = {
        let lineview = UIView()
        lineview.translatesAutoresizingMaskIntoConstraints=false
        lineview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return lineview
    }()
    
    var homeview2: UIView = {
        let homeview2 = UIView()
        homeview2.translatesAutoresizingMaskIntoConstraints=false
        homeview2.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return homeview2
    }()
    
    var latestlabel: UILabel = {
        let latestlabel = UILabel()
        latestlabel.translatesAutoresizingMaskIntoConstraints=false
        latestlabel.font = UIFont.systemFont(ofSize: 25)
        latestlabel.textColor = UIColor.black
        latestlabel.text = "Latest posts"
        return latestlabel
    }()
    
    var laptopimage: UIImageView = {
        let laptopimage = UIImageView()
        laptopimage.translatesAutoresizingMaskIntoConstraints=false
        laptopimage.image = UIImage(named: "laptop_image")
        laptopimage.layer.cornerRadius = 20
        return laptopimage
    }()
    
    var acearlabel: UILabel = {
        let acearlabel = UILabel()
        acearlabel.translatesAutoresizingMaskIntoConstraints=false
        acearlabel.font = UIFont.systemFont(ofSize: 14)
        acearlabel.textColor = UIColor.systemGray
        acearlabel.text = "Acer Aspire 5 Slim Laptop, 15.6 inches Full HD IPS Display, AMD Ryzen 3 3200U, Vega 3 Graphics, 4GB DDR4, 128GB SSD, Backlit ..."
        return acearlabel
    }()
    
    var monylabel: UILabel = {
        let monylabel = UILabel()
        monylabel.translatesAutoresizingMaskIntoConstraints=false
        monylabel.font = UIFont.systemFont(ofSize: 18)
        monylabel.textColor = UIColor.black
        monylabel.text = "2 400 000 sum"
        return monylabel
    }()
    
    var toshkenlabel: UILabel = {
        let toshkenlabel = UILabel()
        toshkenlabel.translatesAutoresizingMaskIntoConstraints=false
        toshkenlabel.font = UIFont.systemFont(ofSize: 14)
        toshkenlabel.textColor = UIColor.systemGray
        toshkenlabel.text = "Chilonzor, Tashkent Today, 03:51"
        toshkenlabel.numberOfLines = 2
        return toshkenlabel
    }()
    
    var chiziqview: UIView = {
        let chiziqview = UIView()
        chiziqview.translatesAutoresizingMaskIntoConstraints=false
        chiziqview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return chiziqview
    }()
    
    var planshedimage: UIImageView = {
        let planshedimage = UIImageView()
        planshedimage.translatesAutoresizingMaskIntoConstraints=false
        planshedimage.image = UIImage(named: "planshed_image")
        planshedimage.layer.cornerRadius = 20
        return planshedimage
    }()
    
    var fulllabel: UILabel = {
        let fulllabel = UILabel()
        fulllabel.translatesAutoresizingMaskIntoConstraints=false
        fulllabel.font = UIFont.systemFont(ofSize: 14)
        fulllabel.textColor = UIColor.black
        fulllabel.numberOfLines = 4
        fulllabel.text = "Acer Aspire 5 Slim Laptop, 15.6 inches Full HD IPS Display"
        return fulllabel
    }()
    
    var dollorlabel: UILabel = {
        let dollorlabel = UILabel()
        dollorlabel.translatesAutoresizingMaskIntoConstraints=false
        dollorlabel.font = UIFont.systemFont(ofSize: 18)
        dollorlabel.textColor = UIColor.black
        dollorlabel.text = "$ 548.00"
        return dollorlabel
    }()
    
    var chilonzorlabel: UILabel = {
        let chilonzorlabel = UILabel()
        chilonzorlabel.translatesAutoresizingMaskIntoConstraints=false
        chilonzorlabel.font = UIFont.systemFont(ofSize: 14)
        chilonzorlabel.textColor = UIColor.systemGray
        chilonzorlabel.numberOfLines = 4
        chilonzorlabel.text = "Chilonzor, Tashkent Today, 03:51"
        return chilonzorlabel
    }()
    
    var longview: UIView = {
        let longview = UIView()
        longview.translatesAutoresizingMaskIntoConstraints=false
        longview.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return longview
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = searchController
        view.backgroundColor = UIColor.white
        view.addSubview(scrollView)
        scrollView.addSubview(homeview)
        homeview.frame = scrollView.bounds
        
    let myRIghtImage = UIImage(named: "filter")?.withRenderingMode(.alwaysOriginal)
    navigationItem.rightBarButtonItem = UIBarButtonItem(image: myRIghtImage, style: .plain, target: self, action: #selector(addTapped))
        
    let myLeftImage = UIImage(named: "left_image")?.withRenderingMode(.alwaysOriginal)
    navigationItem.leftBarButtonItem = UIBarButtonItem(image: myLeftImage, style: .plain, target: self, action: #selector(backToLeft))
        
        homeview.addSubview(texnolabel)
        texnolabel.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 20).isActive=true
        texnolabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        
        homeview.addSubview(productlabel)
        productlabel.topAnchor.constraint(equalTo: texnolabel.bottomAnchor,constant: 0).isActive=true
        productlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        
        homeview.addSubview(teximage)
        teximage.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 30).isActive=true
        teximage.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        
        homeview.addSubview(Homebtn)
        Homebtn.topAnchor.constraint(equalTo: productlabel.bottomAnchor,constant: 15).isActive=true
        Homebtn.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        
        homeview.addSubview(allbtn)
        allbtn.topAnchor.constraint(equalTo: productlabel.bottomAnchor,constant: 15).isActive=true
        allbtn.leftAnchor.constraint(equalTo: Homebtn.rightAnchor,constant: 15).isActive=true
        allbtn.addTarget(self, action: #selector(pushshingRegisterPage), for: .touchUpInside)
        
        homeview.addSubview(postbtn)
        postbtn.topAnchor.constraint(equalTo: productlabel.bottomAnchor,constant: 15).isActive=true
        postbtn.leftAnchor.constraint(equalTo: allbtn.rightAnchor,constant: 15).isActive=true
        
        homeview.addSubview(aboutbtn)
        aboutbtn.topAnchor.constraint(equalTo: productlabel.bottomAnchor,constant: 15).isActive=true
        aboutbtn.leftAnchor.constraint(equalTo: postbtn.rightAnchor,constant: 15).isActive=true
        
        homeview.addSubview(lineview)
        lineview.topAnchor.constraint(equalTo: Homebtn.bottomAnchor,constant: 3).isActive=true
        lineview.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 0).isActive=true
        lineview.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -0).isActive=true
        lineview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        homeview.addSubview(homeview2)
        homeview2.topAnchor.constraint(equalTo: lineview.bottomAnchor,constant: 20).isActive=true
        homeview2.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 0).isActive=true
        homeview2.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -0).isActive=true
        homeview2.heightAnchor.constraint(equalToConstant: 260).isActive=true
        
        homeview.addSubview(latestlabel)
        latestlabel.topAnchor.constraint(equalTo: homeview2.bottomAnchor,constant: 10).isActive=true
        latestlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        
        homeview.addSubview(laptopimage)
        laptopimage.topAnchor.constraint(equalTo: latestlabel.bottomAnchor,constant: 20).isActive=true
        laptopimage.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        laptopimage.heightAnchor.constraint(equalToConstant: 180).isActive=true
        laptopimage.widthAnchor.constraint(equalToConstant: 170).isActive=true
        
        homeview.addSubview(acearlabel)
        acearlabel.topAnchor.constraint(equalTo: latestlabel.bottomAnchor,constant: 25).isActive=true
        acearlabel.leftAnchor.constraint(equalTo: laptopimage.rightAnchor,constant: 15).isActive=true
        acearlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -5).isActive=true
        acearlabel.numberOfLines = 7
        
        homeview.addSubview(monylabel)
        monylabel.topAnchor.constraint(equalTo: acearlabel.bottomAnchor,constant: 10).isActive=true
        monylabel.leftAnchor.constraint(equalTo: laptopimage.rightAnchor,constant: 15).isActive=true
        
        homeview.addSubview(toshkenlabel)
        toshkenlabel.topAnchor.constraint(equalTo: monylabel.bottomAnchor,constant: 8).isActive=true
        toshkenlabel.leftAnchor.constraint(equalTo: laptopimage.rightAnchor,constant: 15).isActive=true
        toshkenlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -20).isActive=true
        
        homeview.addSubview(chiziqview)
        chiziqview.topAnchor.constraint(equalTo: laptopimage.bottomAnchor,constant: 10).isActive=true
        chiziqview.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        chiziqview.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        chiziqview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        homeview.addSubview(planshedimage)
        planshedimage.topAnchor.constraint(equalTo: chiziqview.bottomAnchor,constant: 10).isActive=true
        planshedimage.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        planshedimage.heightAnchor.constraint(equalToConstant: 180).isActive=true
        planshedimage.widthAnchor.constraint(equalToConstant: 170).isActive=true
        
        homeview.addSubview(fulllabel)
        fulllabel.topAnchor.constraint(equalTo: chiziqview.bottomAnchor,constant: 20).isActive=true
        fulllabel.leftAnchor.constraint(equalTo: planshedimage.rightAnchor,constant: 15).isActive=true
        fulllabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        
        homeview.addSubview(dollorlabel)
        dollorlabel.topAnchor.constraint(equalTo: fulllabel.bottomAnchor, constant: 50).isActive=true
        dollorlabel.leftAnchor.constraint(equalTo: planshedimage.rightAnchor,constant: 15).isActive=true
        
        homeview.addSubview(chilonzorlabel)
        chilonzorlabel.topAnchor.constraint(equalTo: dollorlabel.bottomAnchor,constant: 13).isActive=true
        chilonzorlabel.leftAnchor.constraint(equalTo: planshedimage.rightAnchor,constant: 15).isActive=true
        chilonzorlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        
        homeview.addSubview(longview)
        longview.topAnchor.constraint(equalTo: planshedimage.bottomAnchor,constant: 10).isActive=true
        longview.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        longview.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        longview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        
        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 5)
        layout.itemSize = CGSize(width: view.frame.size.width/1.2 ,
                                 height: view.frame.size.width/1.3)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        collectionView?.register(firstCollectionViewCell.self,
                                 forCellWithReuseIdentifier: firstCollectionViewCell.indetifier)


        collectionView?.delegate = self
        collectionView?.dataSource = self
//        collectionView?.backgroundColor = .red
        collectionView?.alwaysBounceHorizontal = false
        collectionView?.translatesAutoresizingMaskIntoConstraints=false
        homeview2.addSubview(collectionView!)
        collectionView?.topAnchor.constraint(equalTo: homeview2.topAnchor).isActive=true
        collectionView?.bottomAnchor.constraint(equalTo: homeview2.bottomAnchor).isActive=true
        collectionView?.leftAnchor.constraint(equalTo: homeview2.leftAnchor).isActive=true
        collectionView?.rightAnchor.constraint(equalTo: homeview2.rightAnchor).isActive=true
        
        
        
        
     }
    
    @objc func pushshingRegisterPage(){
        let controller = AllProductViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
     @objc func addTapped(){}
     @objc func backToLeft(){
         navigationController?.popViewController(animated: true)
     
}

  
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: firstCollectionViewCell.indetifier,for: indexPath) as!
        firstCollectionViewCell
        return cell
    }
    
}
