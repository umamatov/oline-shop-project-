//
//  HomeViewController.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 16/03/22.
//

import UIKit

class HomeViewController: UITableViewController, UISearchResultsUpdating, UISearchBarDelegate{
   
    

        func updateSearchResults(for searchController: UISearchController) {
            
        }
        
    let items = ["Category", "Saved", "Recent"]
    let images = ["category_image", "saved_image", "recent_ image"]
    
    
        lazy var searchController: UISearchBar = {
            let searchBar = UISearchBar()
            searchBar.delegate = self
            searchBar.tintColor = .white
//            s.searchBar.searchBarStyle = .promine
            searchBar.showsCancelButton = false
            return searchBar
        }()
    
 
   
   
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = searchController
        self.navibationBar()
        super.viewDidLayoutSubviews()
        view.backgroundColor = UIColor(rgb: 0xffEEF0F5)
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        self.tableView.register(TableViewHeader.self, forHeaderFooterViewReuseIdentifier: TableViewHeader.identifier)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
//        setSegmentedController()
        
        
        
    }
    

    func setSegmentedController() {
        
        
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.selectedSegmentTintColor = .white
        segmentedControl.translatesAutoresizingMaskIntoConstraints=false
        view.addSubview(segmentedControl)
        segmentedControl.heightAnchor.constraint(equalToConstant: 48).isActive=true
        segmentedControl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive=true
        segmentedControl.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive=true
        segmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive=true
        
        var image1 = UIImage(named: images[0]) ?? UIImage()
        image1 = image1.textEmbeded(image: image1, string: "Category", isImageBeforeText: true, segFont: nil)
        
        var image2 = UIImage(named: images[1]) ?? UIImage()
        image2 = image2.textEmbeded(image: image2, string: "Saved", isImageBeforeText: true, segFont: nil)
        
        var image3 = UIImage(named: images[2]) ?? UIImage()
        image3 = image3.textEmbeded(image: image3, string: "Recent", isImageBeforeText: true, segFont: nil)
        
        segmentedControl.setImage(image1, forSegmentAt: 0)
        segmentedControl.setImage(image2, forSegmentAt: 1)
        segmentedControl.setImage(image3, forSegmentAt: 2)
    }
    

}


extension UIImage {
    func textEmbeded(image: UIImage,
                           string: String,
                isImageBeforeText: Bool,
                          segFont: UIFont? = nil) -> UIImage {
        let font = segFont ?? UIFont.systemFont(ofSize: 16)
        let expectedTextSize = (string as NSString).size(withAttributes: [.font: font])
        let width = expectedTextSize.width + image.size.width + 5
        let height = max(expectedTextSize.height, image.size.width)
        let size = CGSize(width: width, height: height)

        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { context in
            let fontTopPosition: CGFloat = (height - expectedTextSize.height) / 2
            let textOrigin: CGFloat = isImageBeforeText
                ? image.size.width + 5
                : 0
            let textPoint: CGPoint = CGPoint.init(x: textOrigin, y: fontTopPosition)
            string.draw(at: textPoint, withAttributes: [.font: font])
            let alignment: CGFloat = isImageBeforeText
                ? 0
                : expectedTextSize.width + 5
            let rect = CGRect(x: alignment,
                              y: (height - image.size.height) / 2,
                          width: image.size.width,
                         height: image.size.height)
            image.draw(in: rect)
        }

    }
}



extension HomeViewController {
    
   override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section==0){
            self.tableView.register(MyTableCell.self, forCellReuseIdentifier: MyTableCell.identifier)
            
            let cell = tableView.dequeueReusableCell(withIdentifier: MyTableCell.identifier,
                                                     for: indexPath) as! MyTableCell
            return cell
        }else if(indexPath.section==1){
            self.tableView.register(MycollectionCell.self, forCellReuseIdentifier: MycollectionCell.identifier)
            
            let cell = tableView.dequeueReusableCell(withIdentifier: MycollectionCell.identifier,
                                                     for: indexPath) as! MycollectionCell
            return cell
        }else{
            self.tableView.register(RecomendedCell.self, forCellReuseIdentifier: RecomendedCell.identifier)
            
            let cell = tableView.dequeueReusableCell(withIdentifier: RecomendedCell.identifier,
                                                     for: indexPath) as! RecomendedCell
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section==0{
            return 250
        }else if indexPath.section==1{
            return 250
        }else{
            return UIScreen.main.bounds.height
        }
    }
    
    override  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: TableViewHeader.identifier)
        if section==0{
            header?.textLabel?.text = "Top deals"
        }else if section==1{
            header?.textLabel?.text = "Top Storis"
        }else{
            header?.textLabel?.text = "Recommended posts"
        }
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
}



