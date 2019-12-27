//
//  ProfileViewController.swift
//  TestLayout
//
//  Created by Valeria Muldt on 21/12/2019.
//  Copyright © 2019 Valeria Muldt. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
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
    
    let events = [Event(humanName: "Евгений Косынка",
                       humanImage: #imageLiteral(resourceName: "Avatar_cat"),
                       titleName: "Прогулка по Питеру вчетвером ночью",
                       image: #imageLiteral(resourceName: "eventImage"),
                       time: "13 октября - 20:00",
                       address: "Александровский парк",
                       keywords: nil),
                  Event(humanName: "Евгений Косынка",
                        humanImage: #imageLiteral(resourceName: "Avatar_cat"),
                        titleName: "Прогулка по Питеру вчетвером ночью",
                        image: #imageLiteral(resourceName: "eventImage"),
                        time: "13 октября - 20:00",
                        address: "Александровский парк",
                        keywords: nil)]

    @IBOutlet weak var profileImage: UIImageView! {
        didSet {
            profileImage.layer.cornerRadius = profileImage.frame.size.height / 2
            profileImage.clipsToBounds = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupScreen()
    }
    
    func setupScreen() {
        profileImage.image = #imageLiteral(resourceName: "Avatar_cat")
        
    }
    
    
    // MARK: -TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomEventTableViewCell
        
        cell.creatorImage.image = events[indexPath.row].humanImage
        cell.creatorName.text = events[indexPath.row].humanName
        cell.eventImage.image = events[indexPath.row].image
        cell.eventTime.text = events[indexPath.row].time
        cell.eventTitleName.text = events[indexPath.row].titleName
        cell.eventPlace.text = events[indexPath.row].address
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    // MARK: -
    
    @IBAction func myEventsButton(_ sender: Any) {
        tableView.isHidden = false
        purpleViewMyEvent.isHidden = false
        viewMyRatings.isHidden = true
        viewMyArchieve.isHidden = true
    }
    
    @IBAction func myRatingsButton(_ sender: Any) {
        tableView.isHidden = true
        purpleViewMyEvent.isHidden = true
        viewMyRatings.isHidden = false
        viewMyArchieve.isHidden = true
    }
    
    @IBAction func myArchieveButton(_ sender: Any) {
        tableView.isHidden = true
        purpleViewMyEvent.isHidden = true
        viewMyRatings.isHidden = true
        viewMyArchieve.isHidden = false
    }
}

