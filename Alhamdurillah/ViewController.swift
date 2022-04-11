//
//  ViewController.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 16/03/22.
//

import UIKit

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        didTapButton()
    }

    func didTapButton() {
        let tabBarVC = UITabBarController()
        
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: MyLunaViewController())
        let vc3 = UINavigationController(rootViewController: StoresViewController())
        let vc4 = UINavigationController(rootViewController: MessagesViewController())
        let vc5 = UINavigationController(rootViewController: ProfileViewController())
        vc1.title = "Home"
        vc2.title = "My Luna"
        vc3.title = "Stores"
        vc4.title = "Messages"
        vc5.title = "Profile"
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
          
        let images = ["home_image", "moylun_image", "stores_image", "messages_image", "profile_image"]
        
        for x in 0..<items.count {
            items[x] .image = UIImage(named: images[x])
    }
    
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)

    }

}
