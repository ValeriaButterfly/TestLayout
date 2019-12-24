//
//  ProfileViewController.swift
//  TestLayout
//
//  Created by Valeria Muldt on 21/12/2019.
//  Copyright © 2019 Valeria Muldt. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profilePersonName: UILabel!
    @IBOutlet weak var profilePersonAvatarImage: UIImageView!
    
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var myEvents: UIButton!
    @IBOutlet weak var myRatings: UIButton!
    
    @IBOutlet weak var purpleViewMyEvent: UIView!
    @IBOutlet weak var viewMyRatings: UIView! {
        didSet {
            viewMyRatings.isHidden = true
        }
    }
    @IBOutlet weak var viewMyArchieve: UIView! {
        didSet {
            viewMyArchieve.isHidden = true
        }
    }
    
    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var profileImage: UIImageView! {
        didSet {
            profileImage.layer.cornerRadius = profileImage.frame.size.height / 2
            profileImage.clipsToBounds = true
        }
    }
    
    let personProfile = PersonProfile(name: "Жора",
                                      secondname: "Крыжовников",
                                      avatarImage: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupScreen()
    }
    
    func setupScreen() {
        profileImage.image = #imageLiteral(resourceName: "Avatar_cat")
        profilePersonName.text = personProfile.name + " " + personProfile.secondname
        
    }
    
    @IBAction func myEventsButton(_ sender: Any) {
        purpleViewMyEvent.isHidden = false
        viewMyRatings.isHidden = true
        viewMyArchieve.isHidden = true
        
        guard let childVC = self.storyboard?.instantiateViewController(withIdentifier: "myEvents") as? MyEventsViewController else { return }
        
        addChild(childVC)
        childVC.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        childVC.view.frame = profileView.bounds
        
        profileView.addSubview(childVC.view)
        childVC.didMove(toParent: self)
        
    }
    
    @IBAction func myRatingsButton(_ sender: Any) {
        purpleViewMyEvent.isHidden = true
        viewMyRatings.isHidden = false
        viewMyArchieve.isHidden = true
        
        guard let childVC = self.storyboard?.instantiateViewController(withIdentifier: "myRatings") as? MyRatingsViewController else { return }
        
        addChild(childVC)
        childVC.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        childVC.view.frame = profileView.bounds
        
        profileView.addSubview(childVC.view)
        childVC.didMove(toParent: self)
        
    }
    
    @IBAction func myArchieveButton(_ sender: Any) {
        purpleViewMyEvent.isHidden = true
        viewMyRatings.isHidden = true
        viewMyArchieve.isHidden = false
        
        guard let childVC = self.storyboard?.instantiateViewController(withIdentifier: "myArchieve") as? MyArchieveViewController else { return }
        
        addChild(childVC)
        childVC.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        childVC.view.frame = profileView.bounds
        
        profileView.addSubview(childVC.view)
        childVC.didMove(toParent: self)
        
    }
    
}

