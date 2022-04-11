//
//  MyLunaViewController.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 16/03/22.
//

import UIKit

class MyLunaViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
let items = ["Category", "Saved", "Recent"]
let images = ["category_image", "saved_image", "recent_ image"]

    
    let tableView = UITableView()
    
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
        tableView.delegate = self
        tableView.dataSource = self
        
        
        view.addSubview(tableView)
        tableView.frame=view.bounds
        self.setSegmentedController()
        tableView.backgroundColor = UIColor(rgb: 0xF6F7F8)
        view.backgroundColor=UIColor(rgb: 0xffEEF0F5)
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        
        self.navibationBar()
        
        
        
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "FirstTableViewCell"
        tableView.register(FirstTableViewCell.self, forCellReuseIdentifier: cellId)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! FirstTableViewCell
        cell.btn.addTarget(self, action: #selector(buttonTappedd), for: .touchUpInside)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height/1.5
    }
    
    @objc func buttonTappedd(_ sender:UIButton){
        let viewControllerToPresent = MySecondButton()
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
    
    func setSegmentedController() {
        
        
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.selectedSegmentTintColor = .white
        segmentedControl.translatesAutoresizingMaskIntoConstraints=false
        view.addSubview(segmentedControl)
//        segmentedControl.addSubview(tableView)
//        tableView.frame = segmentedControl.bounds
        segmentedControl.heightAnchor.constraint(equalToConstant: 48).isActive=true
        segmentedControl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive=true
        segmentedControl.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive=true
        segmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive=true
        
        
        var image1 = UIImage(named: images[0]) ?? UIImage()
        image1 = image1.texttEmbeded(image: image1, string: "Category", isImageBeforeText: true, segFont: nil)
        
        var image2 = UIImage(named: images[1]) ?? UIImage()
        image2 = image2.texttEmbeded(image: image2, string: "Saved", isImageBeforeText: true, segFont: nil)
        
        var image3 = UIImage(named: images[2]) ?? UIImage()
        image3 = image3.texttEmbeded(image: image3, string: "Recent", isImageBeforeText: true, segFont: nil)
        
        segmentedControl.setImage(image1, forSegmentAt: 0)
        segmentedControl.setImage(image2, forSegmentAt: 1)
        segmentedControl.setImage(image3, forSegmentAt: 2)
    
    }
    
}
    
    extension UIImage {
        func texttEmbeded(image: UIImage,
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

