//
//  StroresViewController.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 16/03/22.
//

import UIKit

class StoresViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
  
    func updateSearchResults(for searchController: UISearchController) {
    }
    
    var collectionView: UICollectionView?
    
let items = ["Category", "Subscribed", "New stores"]
let images = ["category_image", "Subscribed_image", "new_image"]


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
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 120, width: screenWidth, height: screenHeigth))
        scrollView.contentSize = CGSize(width: screenWidth, height: 5000)
        return scrollView
    }()
    
    let homeView:UIView = {
        let homeView = UIView()
        return homeView
    }()
    
    
    let imageView:UIView = {
        let imageView = UIView()
        imageView.translatesAutoresizingMaskIntoConstraints=false
        imageView.backgroundColor=UIColor.white
        return imageView
    }()
    
    var texnoimage: UIImageView = {
        let texnoimage = UIImageView()
        texnoimage.translatesAutoresizingMaskIntoConstraints=false
        texnoimage.image = UIImage(named: "texno_image")
        return texnoimage
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.font = UIFont.systemFont(ofSize: 20)
        alertlabel.textColor = UIColor.black
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.text = "Texnomart"
        return alertlabel
    }()
    
    var plusbtn: UIButton = {
        let plusbtn = UIButton()
        plusbtn.layer.borderColor = UIColor.systemGreen.cgColor
        plusbtn.layer.borderWidth = 1
        plusbtn.setTitleColor(UIColor.systemGreen, for: .normal)
        plusbtn.translatesAutoresizingMaskIntoConstraints=false
        plusbtn.setTitle("+  Follow", for: .normal)
        return plusbtn
    }()
    
    var texnolabel: UILabel = {
        let texnolabel = UILabel()
        texnolabel.font = UIFont.systemFont(ofSize: 15)
        texnolabel.textColor = UIColor.systemGray
        texnolabel.translatesAutoresizingMaskIntoConstraints=false
        texnolabel.text = "Texnomart is a leading installment retail chain..."
        texnolabel.numberOfLines = 2
        return texnolabel
    }()
    
    
    let customView: UIView = {
        let customView = UIView()
        customView.translatesAutoresizingMaskIntoConstraints=false
        customView.backgroundColor = .yellow
        return customView
    }()
    
    var linebtn: UIButton = {
        let linebtn = UIButton()
        linebtn.translatesAutoresizingMaskIntoConstraints=false
        linebtn.backgroundColor = UIColor(rgb: 0xC4C4C4)
        return linebtn
    }()
    
    var secondimage: UIImageView = {
        let secondimage = UIImageView()
        secondimage.translatesAutoresizingMaskIntoConstraints=false
        secondimage.image = UIImage(named: "mi_image-1")
        return secondimage
    }()
    
    var milabel: UILabel = {
        let milabel = UILabel()
        milabel.translatesAutoresizingMaskIntoConstraints=false
        milabel.font = UIFont.systemFont(ofSize: 20)
        milabel.textColor = UIColor.black
        milabel.text = "Mi-store.uz"
        return milabel
    }()
    
    var folowbtn: UIButton = {
        let folowbtn = UIButton()
        folowbtn.translatesAutoresizingMaskIntoConstraints=false
        folowbtn.layer.borderColor = UIColor.systemGreen.cgColor
        folowbtn.layer.borderWidth = 1
        folowbtn.setTitleColor(UIColor.systemGreen, for: .normal)
        folowbtn.setTitle("+ Follow", for: .normal)
        return folowbtn
    }()
    
    var xiomilabel: UILabel = {
        let xiomilabel = UILabel()
        xiomilabel.translatesAutoresizingMaskIntoConstraints=false
        xiomilabel.font = UIFont.systemFont(ofSize: 15)
        xiomilabel.textColor = UIColor.systemGray
        xiomilabel.text = "Xiaomi brand store in Tashkent Our store specializes in..."
        xiomilabel.numberOfLines = 2
        return xiomilabel
    }()
    
    var womenimage: UIImageView = {
        let womenimage = UIImageView()
        womenimage.translatesAutoresizingMaskIntoConstraints=false
        womenimage.image = UIImage(named: "women_image")
        womenimage.layer.masksToBounds = false
        womenimage.layer.cornerRadius = 30
        return womenimage
    }()
    
    var manimage: UIImageView = {
        let manimage = UIImageView()
        manimage.translatesAutoresizingMaskIntoConstraints=false
        manimage.layer.masksToBounds = false
        manimage.layer.cornerRadius = 30
        manimage.image = UIImage(named: "man_image")
        return manimage
    }()
    
    var hilabel: UILabel = {
        let hilabel = UILabel()
        hilabel.translatesAutoresizingMaskIntoConstraints=false
        hilabel.font = UIFont.systemFont(ofSize: 16)
        hilabel.textColor = UIColor.systemGray
        hilabel.text = "Hi-tech corner in Andijan"
        return hilabel
    }()
    
    var manylabel: UILabel = {
        let manylabel = UILabel()
        manylabel.translatesAutoresizingMaskIntoConstraints=false
        manylabel.font = UIFont.systemFont(ofSize: 20)
        manylabel.textColor = UIColor.black
        manylabel.text = "2 400 000 sum"
        return manylabel
    }()
    
    var anjanlabel: UILabel = {
        let anjanlabel = UILabel()
        anjanlabel.translatesAutoresizingMaskIntoConstraints=false
        anjanlabel.font = UIFont.systemFont(ofSize: 16)
        anjanlabel.textColor = UIColor.systemGray
        anjanlabel.numberOfLines = 2
        anjanlabel.text = "Hi-tech corner in Andijan"
        return anjanlabel
    }()
    
    var monylabel: UILabel = {
        let monylabel = UILabel()
        monylabel.translatesAutoresizingMaskIntoConstraints=false
        monylabel.font = UIFont.systemFont(ofSize: 20)
        monylabel.textColor = UIColor.black
        monylabel.text = "2 400 000 sum"
        return monylabel
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = searchController
        self.navibationBar()
        super.viewDidLayoutSubviews()
        view.backgroundColor = UIColor.white
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        view.addSubview(scrollView)
//        scrollView.frame = view.bounds
        scrollView.addSubview(homeView)
        homeView.frame = scrollView.bounds
        homeView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4).isActive=true
        
        homeView.addSubview(texnoimage)
        texnoimage.topAnchor.constraint(equalTo: homeView.topAnchor, constant: 5).isActive=true
        texnoimage.leftAnchor.constraint(equalTo: homeView.leftAnchor, constant: 10).isActive=true
        
        homeView.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 0).isActive=true
        alertlabel.leftAnchor.constraint(equalTo: texnoimage.rightAnchor,constant: 5).isActive=true
        
        
        homeView.addSubview(plusbtn)
        plusbtn.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 10).isActive=true
        plusbtn.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        plusbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        plusbtn.widthAnchor.constraint(equalToConstant: 80).isActive=true
        plusbtn.layer.cornerRadius = 5
        
        homeView.addSubview(texnolabel)
        texnolabel.topAnchor.constraint(equalTo: alertlabel.bottomAnchor,constant: 3).isActive=true
        texnolabel.leftAnchor.constraint(equalTo: texnoimage.rightAnchor,constant: 5).isActive=true
        texnolabel.rightAnchor.constraint(equalTo: plusbtn.leftAnchor,constant: 5).isActive=true
        
        homeView.addSubview(customView)
        customView.frame = homeView.bounds
        customView.topAnchor.constraint(equalTo: texnolabel.bottomAnchor,constant: 20).isActive=true
        customView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 1).isActive=true
        customView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -1).isActive=true
        customView.heightAnchor.constraint(equalToConstant: 250).isActive=true
        customView.widthAnchor.constraint(equalToConstant: 100).isActive=true
        
        homeView.addSubview(linebtn)
        linebtn.topAnchor.constraint(equalTo: customView.bottomAnchor,constant: 1).isActive=true
        linebtn.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 5).isActive=true
        linebtn.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -5).isActive=true
        linebtn.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        homeView.addSubview(secondimage)
        secondimage.topAnchor.constraint(equalTo: linebtn.bottomAnchor,constant: 20).isActive=true
        secondimage.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(milabel)
        milabel.topAnchor.constraint(equalTo: linebtn.bottomAnchor,constant: 15).isActive=true
        milabel.leftAnchor.constraint(equalTo: secondimage.rightAnchor,constant: 5).isActive=true
        
        homeView.addSubview(folowbtn)
        folowbtn.topAnchor.constraint(equalTo: linebtn.bottomAnchor,constant: 25).isActive=true
        folowbtn.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        folowbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        folowbtn.widthAnchor.constraint(equalToConstant: 80).isActive=true
        folowbtn.layer.cornerRadius = 5
        folowbtn.addTarget(self, action: #selector(pushshingRegisterPage), for: .touchUpInside)


        homeView.addSubview(xiomilabel)
        xiomilabel.topAnchor.constraint(equalTo: milabel.bottomAnchor,constant: 0).isActive=true
        xiomilabel.leftAnchor.constraint(equalTo: secondimage.rightAnchor,constant: 5).isActive=true
        xiomilabel.rightAnchor.constraint(equalTo: folowbtn.leftAnchor,constant: -5).isActive=true
        
        homeView.addSubview(womenimage)
        womenimage.topAnchor.constraint(equalTo: secondimage.bottomAnchor,constant: 20).isActive=true
        womenimage.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        womenimage.heightAnchor.constraint(equalToConstant: 170).isActive=true
        womenimage.widthAnchor.constraint(equalToConstant: 165).isActive=true
        womenimage.layer.cornerRadius = 5
        womenimage.layer.masksToBounds = true
        
        homeView.addSubview(manimage)
        manimage.topAnchor.constraint(equalTo: secondimage.bottomAnchor,constant: 20).isActive=true
        manimage.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        manimage.heightAnchor.constraint(equalToConstant: 170).isActive=true
        manimage.widthAnchor.constraint(equalToConstant: 165).isActive=true
        manimage.layer.masksToBounds = true
        manimage.layer.cornerRadius = 5
        
        homeView.addSubview(hilabel)
        hilabel.topAnchor.constraint(equalTo: womenimage.bottomAnchor,constant: 10).isActive=true
        hilabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        hilabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -200).isActive=true
        hilabel.numberOfLines = 2
        
        homeView.addSubview(manylabel)
        manylabel.topAnchor.constraint(equalTo: hilabel.bottomAnchor,constant: 10).isActive=true
        manylabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        
        homeView.addSubview(anjanlabel)
        anjanlabel.topAnchor.constraint(equalTo: manimage.bottomAnchor,constant: 10).isActive=true
        anjanlabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        anjanlabel.leftAnchor.constraint(equalTo: hilabel.rightAnchor,constant: 20).isActive=true
        
        homeView.addSubview(monylabel)
        monylabel.topAnchor.constraint(equalTo: anjanlabel.bottomAnchor,constant: 10).isActive=true
        monylabel.leftAnchor.constraint(equalTo: manylabel.rightAnchor,constant: 40).isActive=true
        monylabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5,
                                           bottom: 5, right: 5)
        layout.itemSize = CGSize(width: view.frame.size.width/1.2 ,
                                 height: view.frame.size.width/1.1)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView?.register(MyyCollectionViewCell.self,
                                 forCellWithReuseIdentifier: MyyCollectionViewCell.indentifier)
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = .white
        collectionView?.alwaysBounceHorizontal = false
        customView.addSubview(collectionView!)
       
        
        
        
    }
    
    @objc func pushshingRegisterPage(){
        let controller = Register()
        navigationController?.pushViewController(controller, animated: true)
    }
        
        
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView?.frame = customView.bounds
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyyCollectionViewCell.indentifier,for: indexPath) as! MyyCollectionViewCell
        return cell
    }
        
    
    }
    

        
        
        
        
        
        
        
        //        self.tableView.register(MTableViewCell.self, forCellReuseIdentifier: MTableViewCell.identifier)
        //        self.tableView.register(ITableViewHeader.self, forHeaderFooterViewReuseIdentifier: ITableViewHeader.identifier)
        //
        //        self.tableView.dataSource = self
        //        self.tableView.delegate = self
            
        
        
//    }
//
//    }
//    extension StoresViewController {
//
//       override func numberOfSections(in tableView: UITableView) -> Int {
//            return 3
//        }
//
//        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return 1
//        }
//
//        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            if(indexPath.section==0){
//                self.tableView.register(UCollectionCell.self, forCellReuseIdentifier: UCollectionCell.identifier)
//
//                let cell = tableView.dequeueReusableCell(withIdentifier: UCollectionCell.identifier,
//                                                         for: indexPath) as! UCollectionCell
//                return cell
//
//}
//}
//
//        override  func tableVieew(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: ITableViewHeader.identifier)
//            if section==0{
//                header?.textLabel?.text = "Top deals"
//
//            return header
//        }
//
//            func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//            return 50
//        }
//    }
//
        
        
        
        
        
        
        
        
        
//
//    }
//    func setSegmentedController() {
//
//
//        let segmentedControl = UISegmentedControl(items: items)
//        segmentedControl.selectedSegmentIndex = 0
//        segmentedControl.selectedSegmentTintColor = .white
//        segmentedControl.translatesAutoresizingMaskIntoConstraints=false
//        view.addSubview(segmentedControl)
//        segmentedControl.heightAnchor.constraint(equalToConstant: 48).isActive=true
//        segmentedControl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive=true
//        segmentedControl.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive=true
//        segmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive=true
//
//        var image1 = UIImage(named: images[0]) ?? UIImage()
//        image1 = image1.imageEmbeded(image: image1, string: "Category", isImageBeforeText: true, segFont: nil)
//
//        var image2 = UIImage(named: images[1]) ?? UIImage()
//        image2 = image2.imageEmbeded(image: image2, string: "Subscribed", isImageBeforeText: true, segFont: nil)
//
//        var image3 = UIImage(named: images[2]) ?? UIImage()
//        image3 = image3.imageEmbeded(image: image3, string: "New stores", isImageBeforeText: true, segFont: nil)
//
//        segmentedControl.setImage(image1, forSegmentAt: 0)
//        segmentedControl.setImage(image2, forSegmentAt: 1)
//        segmentedControl.setImage(image3, forSegmentAt: 2)
//    }
//
//}
//
//extension UIImage {
//    func imageEmbeded(image: UIImage,
//                           string: String,
//                isImageBeforeText: Bool,
//                          segFont: UIFont? = nil) -> UIImage {
//        let font = segFont ?? UIFont.systemFont(ofSize: 16)
//        let expectedTextSize = (string as NSString).size(withAttributes: [.font: font])
//        let width = expectedTextSize.width + image.size.width + 5
//        let height = max(expectedTextSize.height, image.size.width)
//        let size = CGSize(width: width, height: height)
//
//        let renderer = UIGraphicsImageRenderer(size: size)
//        return renderer.image { context in
//            let fontTopPosition: CGFloat = (height - expectedTextSize.height) / 2
//            let textOrigin: CGFloat = isImageBeforeText
//                ? image.size.width + 5
//                : 0
//            let textPoint: CGPoint = CGPoint.init(x: textOrigin, y: fontTopPosition)
//            string.draw(at: textPoint, withAttributes: [.font: font])
//            let alignment: CGFloat = isImageBeforeText
//                ? 0
//                : expectedTextSize.width + 5
//            let rect = CGRect(x: alignment,
//                              y: (height - image.size.height) / 2,
//                          width: image.size.width,
//                         height: image.size.height)
//            image.draw(in: rect)
//        }
//
   
