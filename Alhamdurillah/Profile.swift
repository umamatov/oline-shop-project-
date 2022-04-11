//
//  Profiel.swift
//  Alhamdurillah
//
//  Created by Umidjon Mamatov on 22/03/22.
//

import UIKit


class Profile: UIViewController {
    
    var homeview: UIView = {
        let homeview = UIView()
        return homeview
    }()
    
    var profileimage: UIImageView = {
        let profileimage = UIImageView()
        profileimage.translatesAutoresizingMaskIntoConstraints=false
        profileimage.image = UIImage(named: "profil_image")
        return profileimage
    }()
    
    var cameraimage: UIImageView = {
        let cameraimage = UIImageView()
        cameraimage.translatesAutoresizingMaskIntoConstraints=false
        cameraimage.image = UIImage(named: "camera_image")
        return cameraimage
    }()
    
    var editbtn: UIButton = {
        let editbtn = UIButton()
        editbtn.translatesAutoresizingMaskIntoConstraints=false
        editbtn.backgroundColor = UIColor(rgb: 0x7ED321)
        editbtn.layer.cornerRadius = 10
        editbtn.setTitle("Edit", for: .normal)
        return editbtn
    }()
    
    var usernamelabel: UILabel = {
        let usernamelabel = UILabel()
        usernamelabel.translatesAutoresizingMaskIntoConstraints=false
        usernamelabel.font = UIFont.systemFont(ofSize: 15)
        usernamelabel.textColor = UIColor.systemGray
        usernamelabel.text = "Username"
        return usernamelabel
    }()
    
    var usertextfield: UITextField = {
        let usertextfield = UITextField()
        usertextfield.translatesAutoresizingMaskIntoConstraints=false
        usertextfield.backgroundColor = UIColor(rgb: 0xF6F7F8)
        usertextfield.keyboardAppearance = .dark
        usertextfield.keyboardType = .default
        usertextfield.textColor = UIColor.black
        usertextfield.font = UIFont.systemFont(ofSize: 20)
        usertextfield.layer.cornerRadius = 5
        return usertextfield
    }()
    
    var displaylabel: UILabel = {
        let displaylabel = UILabel()
        displaylabel.translatesAutoresizingMaskIntoConstraints=false
        displaylabel.font = UIFont.systemFont(ofSize: 15)
        displaylabel.textColor = UIColor.systemGray
        displaylabel.text = "Display name"
        return displaylabel
    }()
    
    var field: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints=false
        field.font = UIFont.systemFont(ofSize: 20)
        field.keyboardAppearance = .dark
        field.keyboardType = .default
        field.layer.cornerRadius = 5
        field.textColor = UIColor.black
        field.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return field
    }()
    
    var numberlabel: UILabel = {
        let numberlabel = UILabel()
        numberlabel.translatesAutoresizingMaskIntoConstraints=false
        numberlabel.font = UIFont.systemFont(ofSize: 15)
        numberlabel.textColor = UIColor.systemGray
        numberlabel.text = "Phone number"
        return numberlabel
    }()
    
    var phonfield: UITextField = {
        let phonefield = UITextField()
        phonefield.translatesAutoresizingMaskIntoConstraints=false
        phonefield.font = UIFont.systemFont(ofSize: 20)
        phonefield.keyboardAppearance = .dark
        phonefield.keyboardType = .default
        phonefield.layer.cornerRadius = 5
        phonefield.backgroundColor = UIColor(rgb: 0xF6F7F8)
        phonefield.textColor = UIColor.black
        return phonefield
    }()
    
    var emaillabel: UILabel = {
        let emaillabel = UILabel()
        emaillabel.translatesAutoresizingMaskIntoConstraints=false
        emaillabel.font = UIFont.systemFont(ofSize: 15)
        emaillabel.textColor = UIColor.systemGray
        emaillabel.text = "Email"
        return emaillabel
    }()
    
    var emailfield: UITextField = {
        let emailfield = UITextField()
        emailfield.translatesAutoresizingMaskIntoConstraints=false
        emailfield.font = UIFont.systemFont(ofSize: 20)
        emailfield.keyboardAppearance = .dark
        emailfield.keyboardType = .default
        emailfield.backgroundColor = UIColor(rgb: 0xF6F7F8)
        emailfield.layer.cornerRadius = 5
        emailfield.textColor = UIColor.black
        return emailfield
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 15)
        alertlabel.textColor = UIColor.systemGray
        alertlabel.text = "Region"
        return alertlabel
    }()
    
    var regionbtn: UIButton = {
        let regionbtn = UIButton()
        regionbtn.translatesAutoresizingMaskIntoConstraints=false
        regionbtn.backgroundColor = UIColor(rgb: 0xF6F7F8)
        regionbtn.setTitleColor(UIColor.black, for: .normal)
        regionbtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        regionbtn.layer.cornerRadius = 5
        regionbtn.setTitle("Toshkent", for: .normal)
        regionbtn.titleEdgeInsets=UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 90)
        regionbtn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return regionbtn
    }()
    
    var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints=false
        image.image = UIImage(named: "bottom_imge")
        return image
    }()
    
    var districtlabel: UILabel = {
        let districtlabel = UILabel()
        districtlabel.translatesAutoresizingMaskIntoConstraints=false
        districtlabel.font = UIFont.systemFont(ofSize: 15)
        districtlabel.textColor = UIColor.systemGray
        districtlabel.text = "District"
        return districtlabel
    }()
    
    var secondbtn: UIButton = {
        let secondbtn = UIButton()
        secondbtn.translatesAutoresizingMaskIntoConstraints=false
        secondbtn.backgroundColor = UIColor(rgb: 0xF6F7F8)
        secondbtn.setTitleColor(UIColor.black, for: .normal)
        secondbtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        secondbtn.layer.cornerRadius = 5
        secondbtn.setTitle("Chilonzor", for: .normal)
        secondbtn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 90)
        secondbtn.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        return secondbtn
    }()
    
    var showimage: UIImageView = {
        let showimage = UIImageView()
        showimage.translatesAutoresizingMaskIntoConstraints=false
        showimage.image = UIImage(named: "bottom_imge")
        return showimage
    }()
    
    var morelabel: UILabel = {
        let morelabel = UILabel()
        morelabel.translatesAutoresizingMaskIntoConstraints=false
        morelabel.font = UIFont.systemFont(ofSize: 15)
        morelabel.textColor = UIColor.systemGray
        morelabel.text = "More about location"
        return morelabel
    }()
    
    var locationfield: UITextField = {
        let locationfield = UITextField()
        locationfield.translatesAutoresizingMaskIntoConstraints=false
        locationfield.backgroundColor = UIColor(rgb: 0xF6F7F8)
        locationfield.keyboardAppearance = .dark
        locationfield.keyboardType = .default
        locationfield.font = UIFont.systemFont(ofSize: 20)
        locationfield.textColor = UIColor.black
        locationfield.layer.cornerRadius = 5
        return locationfield
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(homeview)
        homeview.frame = view.bounds
        title = "Profile"
        
        let  myRightImage = UIImage(named: "true_image")?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myRightImage, style: .plain, target: self, action: #selector(addTapped))
        
    
        homeview.addSubview(profileimage)
        profileimage.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 60).isActive=true
        profileimage.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 170).isActive=true
        profileimage.heightAnchor.constraint(equalToConstant: 40).isActive=true
        profileimage.widthAnchor.constraint(equalToConstant: 40).isActive=true
        
        
        profileimage.addSubview(cameraimage)
        cameraimage.topAnchor.constraint(equalTo: profileimage.topAnchor,constant: 10).isActive=true
        cameraimage.leftAnchor.constraint(equalTo: profileimage.leftAnchor,constant: 10).isActive=true
        cameraimage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        cameraimage.widthAnchor.constraint(equalToConstant: 20).isActive=true
        
        homeview.addSubview(editbtn)
        editbtn.topAnchor.constraint(equalTo: profileimage.bottomAnchor,constant: 5).isActive=true
        editbtn.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 160).isActive=true
        editbtn.heightAnchor.constraint(equalToConstant: 25).isActive=true
        editbtn.widthAnchor.constraint(equalToConstant: 60).isActive=true
    
        homeview.addSubview(usernamelabel)
        usernamelabel.topAnchor.constraint(equalTo: editbtn.bottomAnchor,constant: 5).isActive=true
        usernamelabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        
        homeview.addSubview(usertextfield)
        usertextfield.topAnchor.constraint(equalTo: usernamelabel.bottomAnchor,constant: 5).isActive=true
        usertextfield.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        usertextfield.heightAnchor.constraint(equalToConstant: 48).isActive=true
        usertextfield.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        
        homeview.addSubview(displaylabel)
        displaylabel.topAnchor.constraint(equalTo: usertextfield.bottomAnchor,constant: 5).isActive=true
        displaylabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        
        homeview.addSubview(field)
        field.topAnchor.constraint(equalTo: displaylabel.bottomAnchor,constant: 5).isActive=true
        field.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        field.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        field.heightAnchor.constraint(equalToConstant: 48).isActive=true
    
        homeview.addSubview(numberlabel)
        numberlabel.topAnchor.constraint(equalTo: field.bottomAnchor,constant: 5).isActive=true
        numberlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        
        homeview.addSubview(phonfield)
        phonfield.topAnchor.constraint(equalTo: numberlabel.bottomAnchor,constant: 5).isActive=true
        phonfield.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        phonfield.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        phonfield.heightAnchor.constraint(equalToConstant: 48).isActive=true
        
        homeview.addSubview(emaillabel)
        emaillabel.topAnchor.constraint(equalTo: phonfield.bottomAnchor,constant: 5).isActive=true
        emaillabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        
        homeview.addSubview(emailfield)
        emailfield.topAnchor.constraint(equalTo: emaillabel.bottomAnchor,constant: 5).isActive=true
        emailfield.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        emailfield.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        emailfield.heightAnchor.constraint(equalToConstant: 48).isActive=true

        homeview.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: emailfield.bottomAnchor,constant: 5).isActive=true
        alertlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true

        homeview.addSubview(regionbtn)
        regionbtn.topAnchor.constraint(equalTo: alertlabel.bottomAnchor,constant: 5).isActive=true
        regionbtn.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        regionbtn.widthAnchor.constraint(equalToConstant: 165).isActive=true
        regionbtn.heightAnchor.constraint(equalToConstant: 48).isActive=true
        
        regionbtn.addSubview(image)
        image.topAnchor.constraint(equalTo: regionbtn.topAnchor,constant: 23).isActive=true
        image.rightAnchor.constraint(equalTo: regionbtn.rightAnchor,constant: -15).isActive=true
    
        homeview.addSubview(districtlabel)
        districtlabel.topAnchor.constraint(equalTo: emailfield.bottomAnchor,constant: 5).isActive=true
        districtlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -120).isActive=true
        
        homeview.addSubview(secondbtn)
        secondbtn.topAnchor.constraint(equalTo: districtlabel.bottomAnchor,constant: 5).isActive=true
        secondbtn.leftAnchor.constraint(equalTo: regionbtn.rightAnchor,constant: 10).isActive=true
        secondbtn.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        secondbtn.heightAnchor.constraint(equalToConstant: 48).isActive=true
        
        secondbtn.addSubview(showimage)
        showimage.topAnchor.constraint(equalTo: secondbtn.topAnchor,constant: 23).isActive=true
        showimage.rightAnchor.constraint(equalTo: secondbtn.rightAnchor,constant: -15).isActive=true
        
        homeview.addSubview(morelabel)
        morelabel.topAnchor.constraint(equalTo: regionbtn.bottomAnchor,constant: 5).isActive=true
        morelabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        
        homeview.addSubview(locationfield)
        locationfield.topAnchor.constraint(equalTo: morelabel.bottomAnchor,constant: 0).isActive=true
        locationfield.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        locationfield.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        locationfield.heightAnchor.constraint(equalToConstant: 80).isActive=true
        
        
    }

    @objc func addTapped(){
        navigationController?.popViewController(animated: true)
    }

    @objc func buttonTapped(_ sender:UIButton){
        let viewControllerToPresent = ButtomViewController()
        showMyViewControllerInACustomizedSheet(vc: viewControllerToPresent)

    }
    @objc func handleTap(_ sender:UIButton){
        let viewControllerToPresent = TappedViewController()
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
