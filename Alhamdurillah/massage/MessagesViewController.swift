//
//  MessagesViewController.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 16/03/22.
//

import UIKit

class MessagesViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
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
    
    let homeView: UIView = {
        let homeView = UIView()
        return homeView
    }()
    
    let homeView2: UIView = {
        let homeView = UIView()
        homeView.translatesAutoresizingMaskIntoConstraints=false
        return homeView
    }()
    
    
    
    
    var detailslabel: UILabel = {
        let detailslabel = UILabel()
        detailslabel.translatesAutoresizingMaskIntoConstraints=false
        detailslabel.font = UIFont.systemFont(ofSize: 25)
        detailslabel.textColor = UIColor.black
        detailslabel.text = "Product details"
        return detailslabel
    }()
    
    var customview: UIView = {
        let customview = UIView()
        customview.translatesAutoresizingMaskIntoConstraints=false
        customview.backgroundColor = UIColor.white
        return customview
    }()
    
    var categorylabel: UILabel = {
        let categorylabel = UILabel()
        categorylabel.translatesAutoresizingMaskIntoConstraints=false
        categorylabel.font = UIFont.systemFont(ofSize: 15)
        categorylabel.textColor = UIColor.systemGray
        categorylabel.text = "Category"
        return categorylabel
    }()
    
    var electronicbtn: UIButton = {
        let electronicbtn = UIButton()
        electronicbtn.translatesAutoresizingMaskIntoConstraints=false
        electronicbtn.backgroundColor = UIColor(rgb: 0xF6F7F8)
        electronicbtn.setTitleColor(UIColor.black, for: .normal)
        electronicbtn.layer.cornerRadius = 7
        electronicbtn.setTitle("Electronics", for: .normal)
        electronicbtn.titleEdgeInsets=UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 250)
        electronicbtn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return electronicbtn
    }()

    var bottomimage: UIImageView = {
        let bottomimage = UIImageView()
        bottomimage.translatesAutoresizingMaskIntoConstraints=false
        bottomimage.image = UIImage(named: "bottom_imge")
        return bottomimage
    }()
    
    var titlelabel: UILabel = {
        let titlelabel = UILabel()
        titlelabel.translatesAutoresizingMaskIntoConstraints=false
        titlelabel.font = UIFont.systemFont(ofSize: 15)
        titlelabel.textColor = UIColor.systemGray
        titlelabel.text = "Title💥"
        return titlelabel
    }()
    
    var firstfield: UITextField = {
        let firstfield = UITextField()
        firstfield.keyboardAppearance = .dark
        firstfield.keyboardType = .default
        firstfield.translatesAutoresizingMaskIntoConstraints=false
        firstfield.backgroundColor = UIColor(rgb: 0xF6F7F8)
        firstfield.layer.cornerRadius = 5
        let gesture=UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(handleTap))
        firstfield.addGestureRecognizer(gesture)
        return firstfield
    }()
    
    var descriplabel: UILabel = {
        let descriplabel = UILabel()
        descriplabel.translatesAutoresizingMaskIntoConstraints=false
        descriplabel.font = UIFont.systemFont(ofSize: 15)
        descriplabel.textColor = UIColor.systemGray
        descriplabel.text = "Description"
        return descriplabel
    }()
    
    var secondfield: UITextField = {
        let secondfield = UITextField()
        secondfield.keyboardAppearance = .dark
        secondfield.keyboardType = .default
        secondfield.translatesAutoresizingMaskIntoConstraints=false
        secondfield.backgroundColor = UIColor(rgb: 0xF6F7F8)
        secondfield.layer.cornerRadius = 5
        secondfield.textColor = UIColor.black
        return secondfield
    }()
    
    var locationlabel: UILabel = {
        let locationlabel = UILabel()
        locationlabel.translatesAutoresizingMaskIntoConstraints=false
        locationlabel.font = UIFont.systemFont(ofSize: 15)
        locationlabel.textColor = UIColor.systemGray
        locationlabel.text = "Location"
        return locationlabel
    }()
    
    var thirthfield: UITextField = {
        let thirthfield = UITextField()
        thirthfield.keyboardAppearance = .dark
        thirthfield.keyboardType = .default
        thirthfield.font = UIFont.systemFont(ofSize: 20)
        thirthfield.textColor = UIColor.black
        thirthfield.translatesAutoresizingMaskIntoConstraints=false
        thirthfield.backgroundColor = UIColor(rgb: 0xF6F7F8)
        thirthfield.layer.cornerRadius = 7
        return thirthfield
    }()
    
    var uzbeklabel: UILabel = {
        let uzbeklabel = UILabel()
        uzbeklabel.translatesAutoresizingMaskIntoConstraints=false
        uzbeklabel.font = UIFont.systemFont(ofSize: 18)
        uzbeklabel.textColor = UIColor.black
        uzbeklabel.text = "Uzbekistan"
        return uzbeklabel
    }()
    
    var imageview: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints=false
        imageview.image = UIImage(named:  "bottom_imge")
        return imageview
    }()
    
    var conditionlabel: UILabel = {
        let conditionlabel = UILabel()
        conditionlabel.translatesAutoresizingMaskIntoConstraints=false
        conditionlabel.font = UIFont.systemFont(ofSize: 15)
        conditionlabel.textColor = UIColor.systemGray
        conditionlabel.text = "Condition"
        return conditionlabel
    }()
    
    var fourthfield: UITextField = {
        let fourthfield = UITextField()
        fourthfield.keyboardType = .default
        fourthfield.keyboardAppearance = .dark
        fourthfield.font = UIFont.systemFont(ofSize: 20)
        fourthfield.textColor = UIColor.black
        fourthfield.translatesAutoresizingMaskIntoConstraints=false
        fourthfield.backgroundColor = UIColor(rgb: 0xF6F7F8)
        fourthfield.layer.cornerRadius = 7
        return fourthfield
    }()
    
    var newlabel: UILabel = {
        let newlabel = UILabel()
        newlabel.translatesAutoresizingMaskIntoConstraints=false
        newlabel.font = UIFont.systemFont(ofSize: 20)
        newlabel.textColor = UIColor.black
        newlabel.text = "New"
        return newlabel
    }()
    
    var rightimage: UIImageView = {
        let rightimage = UIImageView()
        rightimage.translatesAutoresizingMaskIntoConstraints=false
        rightimage.image = UIImage(named: "bottom_imge")
        return rightimage
    }()
    
    var pricelabel: UILabel = {
        let pricelabel = UILabel()
        pricelabel.translatesAutoresizingMaskIntoConstraints=false
        pricelabel.font = UIFont.systemFont(ofSize: 15)
        pricelabel.textColor = UIColor.systemGray
        pricelabel.text = "Price💥"
        return pricelabel
    }()
    
    var currencylabel: UILabel = {
        let currencylabel = UILabel()
        currencylabel.translatesAutoresizingMaskIntoConstraints=false
        currencylabel.font = UIFont.systemFont(ofSize: 15)
        currencylabel.textColor = UIColor.systemGray
        currencylabel.text = "Currency"
        return currencylabel
    }()
    
    var fifthfield: UITextField = {
        let fifthfield = UITextField()
        fifthfield.keyboardType = .default
        fifthfield.keyboardAppearance = .dark
        fifthfield.font = UIFont.systemFont(ofSize: 20)
        fifthfield.textColor = UIColor.black
        fifthfield.translatesAutoresizingMaskIntoConstraints=false
        fifthfield.backgroundColor = UIColor(rgb: 0xF6F7F8)
        fifthfield.layer.cornerRadius = 7
        return fifthfield
    }()
    
    var sixthfield: UITextField = {
        let sixthfield = UITextField()
        sixthfield.keyboardType = .default
        sixthfield.keyboardAppearance = .dark
        sixthfield.font = UIFont.systemFont(ofSize: 20)
        sixthfield.textColor = UIColor.black
        sixthfield.translatesAutoresizingMaskIntoConstraints=false
        sixthfield.backgroundColor = UIColor(rgb: 0xF6F7F8)
        sixthfield.layer.cornerRadius = 7
        return sixthfield
    }()
    
    var sumlabel: UILabel = {
        let sumlabel = UILabel()
        sumlabel.translatesAutoresizingMaskIntoConstraints=false
        sumlabel.font = UIFont.systemFont(ofSize: 20)
        sumlabel.textColor = UIColor.black
        sumlabel.text = "SUM"
        return sumlabel
    }()
    
    var lastimage: UIImageView = {
        let lastimage = UIImageView()
        lastimage.translatesAutoresizingMaskIntoConstraints=false
        lastimage.image = UIImage(named: "bottom_imge")
        return lastimage
    }()
    
    var telegramimage: UIImageView = {
        let telegramimage = UIImageView()
        telegramimage.translatesAutoresizingMaskIntoConstraints=false
        telegramimage.image = UIImage(named: "telegram_image")
        return telegramimage
    }()
    
    var postlabel: UILabel = {
        let postlabel = UILabel()
        postlabel.translatesAutoresizingMaskIntoConstraints=false
        postlabel.font = UIFont.systemFont(ofSize: 18)
        postlabel.textColor = UIColor.black
        postlabel.text = "Post on Telegram "
        return postlabel
    }()
    
    
     var mySwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.translatesAutoresizingMaskIntoConstraints=false
        mySwitch.onTintColor = .systemGreen
        return mySwitch
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = searchController
        self.navibationBar()
        view.backgroundColor=UIColor.white
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        view.addSubview(scrollView)
        scrollView.addSubview(homeView)
        homeView.frame = scrollView.bounds
        
        homeView.addSubview(homeView2)
        homeView2.topAnchor.constraint(equalTo: homeView.topAnchor).isActive=true
        homeView2.bottomAnchor.constraint(equalTo: homeView.bottomAnchor).isActive=true
        homeView2.leftAnchor.constraint(equalTo: homeView.leftAnchor).isActive=true
        homeView2.rightAnchor.constraint(equalTo: homeView.rightAnchor).isActive=true
        
        homeView2.addSubview(detailslabel)
        detailslabel.topAnchor.constraint(equalTo: homeView2.topAnchor,constant: 10).isActive=true
        detailslabel.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 10).isActive=true
        detailslabel.rightAnchor.constraint(equalTo: homeView2.rightAnchor,constant: -10).isActive=true
        
        homeView2.addSubview(customview)
        customview.backgroundColor = .yellow
        customview.topAnchor.constraint(equalTo: detailslabel.bottomAnchor,constant: 0).isActive=true
        customview.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 1).isActive=true
        customview.rightAnchor.constraint(equalTo: homeView2.rightAnchor,constant: -1).isActive=true
        customview.heightAnchor.constraint(equalToConstant: 85).isActive=true
        
        homeView2.addSubview(categorylabel)
        categorylabel.topAnchor.constraint(equalTo: customview.bottomAnchor,constant: 25).isActive=true
        categorylabel.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 15).isActive=true
        
        homeView2.addSubview(electronicbtn)
        electronicbtn.topAnchor.constraint(equalTo: categorylabel.bottomAnchor,constant: 10).isActive=true
        electronicbtn.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 15).isActive=true
        electronicbtn.rightAnchor.constraint(equalTo: homeView2.rightAnchor,constant: -15).isActive=true
        electronicbtn.heightAnchor.constraint(equalToConstant: 60).isActive=true
        
        electronicbtn.addSubview(bottomimage)
        bottomimage.topAnchor.constraint(equalTo: electronicbtn.topAnchor,constant: 27).isActive=true
        bottomimage.rightAnchor.constraint(equalTo: electronicbtn.rightAnchor,constant: -25).isActive=true
       
        homeView2.addSubview(titlelabel)
        titlelabel.topAnchor.constraint(equalTo: electronicbtn.bottomAnchor,constant: 20).isActive=true
        titlelabel.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 12).isActive=true
        
        homeView2.addSubview(firstfield)
        firstfield.topAnchor.constraint(equalTo: titlelabel.bottomAnchor,constant: 10).isActive=true
        firstfield.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 15).isActive=true
        firstfield.rightAnchor.constraint(equalTo: homeView2.rightAnchor,constant: -15).isActive=true
        firstfield.heightAnchor.constraint(equalToConstant: 60).isActive=true
        
        homeView2.addSubview(descriplabel)
        descriplabel.topAnchor.constraint(equalTo: firstfield.bottomAnchor,constant: 20).isActive=true
        descriplabel.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 12).isActive=true
        
        homeView2.addSubview(secondfield)
        secondfield.topAnchor.constraint(equalTo: descriplabel.bottomAnchor,constant: 10).isActive=true
        secondfield.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 15).isActive=true
        secondfield.rightAnchor.constraint(equalTo: homeView2.rightAnchor,constant: -15).isActive=true
        secondfield.heightAnchor.constraint(equalToConstant: 120).isActive=true
        
        homeView2.addSubview(locationlabel)
        locationlabel.topAnchor.constraint(equalTo: secondfield.bottomAnchor,constant: 20).isActive=true
        locationlabel.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 12).isActive=true
        
        homeView2.addSubview(thirthfield)
        thirthfield.topAnchor.constraint(equalTo: locationlabel.bottomAnchor,constant: 10).isActive=true
        thirthfield.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 15).isActive=true
        thirthfield.rightAnchor.constraint(equalTo: homeView2.rightAnchor,constant: -15).isActive=true
        thirthfield.heightAnchor.constraint(equalToConstant: 60).isActive=true
        
        thirthfield.addSubview(uzbeklabel)
        uzbeklabel.topAnchor.constraint(equalTo: thirthfield.topAnchor,constant: 18).isActive=true
        uzbeklabel.leftAnchor.constraint(equalTo: thirthfield.leftAnchor,constant: 20).isActive=true
        
        thirthfield.addSubview(imageview)
        imageview.topAnchor.constraint(equalTo: thirthfield.topAnchor,constant: 27).isActive=true
        imageview.rightAnchor.constraint(equalTo: thirthfield.rightAnchor,constant: -25).isActive=true
        
        homeView2.addSubview(conditionlabel)
        conditionlabel.topAnchor.constraint(equalTo: thirthfield.bottomAnchor,constant: 20).isActive=true
        conditionlabel.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 12).isActive=true
        
        homeView2.addSubview(fourthfield)
        fourthfield.topAnchor.constraint(equalTo: conditionlabel.bottomAnchor,constant: 10).isActive=true
        fourthfield.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 15).isActive=true
        fourthfield.rightAnchor.constraint(equalTo: homeView2.rightAnchor,constant: -15).isActive=true
        fourthfield.heightAnchor.constraint(equalToConstant: 60).isActive=true
        
        fourthfield.addSubview(newlabel)
        newlabel.topAnchor.constraint(equalTo: fourthfield.topAnchor,constant: 18).isActive=true
        newlabel.leftAnchor.constraint(equalTo: fourthfield.leftAnchor,constant: 20).isActive=true
        
        fourthfield.addSubview(rightimage)
        rightimage.topAnchor.constraint(equalTo: fourthfield.topAnchor,constant: 27).isActive=true
        rightimage.rightAnchor.constraint(equalTo: fourthfield.rightAnchor,constant: -25).isActive=true
        
        homeView2.addSubview(pricelabel)
        pricelabel.topAnchor.constraint(equalTo: fourthfield.bottomAnchor,constant: 20).isActive=true
        pricelabel.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 10).isActive=true
        
        homeView2.addSubview(currencylabel)
        currencylabel.topAnchor.constraint(equalTo: fourthfield.bottomAnchor,constant: 20).isActive=true
        currencylabel.rightAnchor.constraint(equalTo: homeView2.rightAnchor,constant: -80).isActive=true
        
        homeView2.addSubview(fifthfield)
        fifthfield.topAnchor.constraint(equalTo: pricelabel.bottomAnchor,constant: 10).isActive=true
        fifthfield.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 10).isActive=true
        fifthfield.heightAnchor.constraint(equalToConstant: 60).isActive=true
        fifthfield.widthAnchor.constraint(equalToConstant: 200).isActive=true
        
        homeView2.addSubview(sixthfield)
        sixthfield.topAnchor.constraint(equalTo: currencylabel.bottomAnchor,constant: 10).isActive=true
        sixthfield.leftAnchor.constraint(equalTo: fifthfield.rightAnchor,constant: 10).isActive=true
        sixthfield.heightAnchor.constraint(equalToConstant: 60).isActive=true
        sixthfield.widthAnchor.constraint(equalToConstant: 140).isActive=true
        
        sixthfield.addSubview(sumlabel)
        sumlabel.topAnchor.constraint(equalTo: sixthfield.topAnchor,constant: 18).isActive=true
        sumlabel.leftAnchor.constraint(equalTo: sixthfield.leftAnchor,constant: 10).isActive=true
        
        homeView2.addSubview(lastimage)
        lastimage.topAnchor.constraint(equalTo: sixthfield.topAnchor,constant: 27).isActive=true
        lastimage.rightAnchor.constraint(equalTo: sixthfield.rightAnchor,constant: -15).isActive=true
        
        homeView2.addSubview(telegramimage)
        telegramimage.topAnchor.constraint(equalTo: fifthfield.bottomAnchor,constant: 50).isActive=true
        telegramimage.leftAnchor.constraint(equalTo: homeView2.leftAnchor,constant: 15).isActive=true
        
        homeView2.addSubview(postlabel)
        postlabel.topAnchor.constraint(equalTo: fifthfield.bottomAnchor,constant: 52).isActive=true
        postlabel.leftAnchor.constraint(equalTo: telegramimage.rightAnchor,constant: 10).isActive=true

        homeView2.addSubview(mySwitch)
        mySwitch.topAnchor.constraint(equalTo: sixthfield.bottomAnchor,constant: 50).isActive=true
        mySwitch.rightAnchor.constraint(equalTo: homeView2.rightAnchor,constant: -20).isActive=true
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 0, right: 5)
        layout.itemSize = CGSize(width: view.frame.size.width/6.1 ,
                                 height: view.frame.size.width/5.1)

        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        collectionView?.register(MyCollectionViewCell15.self,
                                 forCellWithReuseIdentifier: MyCollectionViewCell15.indetifier)

        collectionView?.delegate = self
        collectionView?.dataSource = self
//        collectionView?.backgroundColor = .red
        collectionView?.alwaysBounceHorizontal = false
        collectionView?.translatesAutoresizingMaskIntoConstraints=false
        customview.addSubview(collectionView!)
        collectionView?.topAnchor.constraint(equalTo: customview.topAnchor).isActive=true
        collectionView?.bottomAnchor.constraint(equalTo: customview.bottomAnchor).isActive=true
        collectionView?.leftAnchor.constraint(equalTo: customview.leftAnchor).isActive=true
        collectionView?.rightAnchor.constraint(equalTo: customview.rightAnchor).isActive=true
        
//
        
        
        
        
        
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell15.indetifier,for: indexPath) as! MyCollectionViewCell15
        return cell
    }
    
    
    //Showwing bottom dialog
    @objc func buttonTapped(_ sender:UIButton){
        let viewControllerToPresent = BottomElectronicsViewController()
        showMyViewControllerInACustomizedSheet(vc: viewControllerToPresent)
    }
    
    @objc func handleTap(sender: UITapGestureRecognizer) {
       print("Tapped")
        let viewControllerToPresent = BottomElectronicsViewController()
        showMyViewControllerInACustomizedSheet(vc: viewControllerToPresent)
    }
    
    func showMyViewControllerInACustomizedSheet(vc:UIViewController) {
       
        if let sheet = vc.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.largestUndimmedDetentIdentifier = .medium
            sheet.prefersScrollingExpandsWhenScrolledToEdge = false
            sheet.prefersEdgeAttachedInCompactHeight = true
            sheet.widthFollowsPreferredContentSizeWhenEdgeAttached = true
            
        }
        present(vc, animated: true, completion: nil)
    }

}


