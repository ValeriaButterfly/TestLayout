//
//  MyEventsViewController.swift
//  TestLayout
//
//  Created by Valeria Muldt on 24/12/2019.
//  Copyright © 2019 Valeria Muldt. All rights reserved.
//

import UIKit

class MyEventsViewController: UIViewController {
    
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


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MyEventsViewController: UITableViewDelegate, UITableViewDataSource {
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
    
    
}
