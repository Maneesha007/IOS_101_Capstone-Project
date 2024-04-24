//
//  GuideViewController.swift
//  IOS_101_Capstone Project
//
//  Created by Maneesha Reddy gurrala on 4/23/24.
//

import UIKit

struct Guide {
    let name: String
    let location: String
    let quote: String
    let imageURL: String
}

class GuideViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var guideProfileView: UITableView!
    
    // Array to store guide objects
    var guides: [Guide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = " meet locals "
        
        // Register the nib file for the custom cell
        //let nib = UINib(nibName: "GuideTableViewCell", bundle: nil)
        //guideProfileView.register(nib, forCellReuseIdentifier: "GuideTableViewCell")
        
        // Set dataSource and delegate
        guideProfileView.dataSource = self
        guideProfileView.delegate = self
        
        // Fetch guide data and populate guides array
        fetchGuideData()
    }
    
    // Function to fetch guide data and populate guides array
    func fetchGuideData() {
        // Sample data arrays
        let guideNames = ["John Doe", "Jane Smith", "Michael Johnson", "Emily Brown", "David Lee"]
        let guideLocations = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX", "Miami, FL"]
        let guideQuotes = [
            "Explore the world with passion!",
            "Adventure awaits around every corner.",
            "Life is an adventure, embrace it.",
            "Discover new horizons every day.",
            "Live your life to the fullest, every moment counts."
        ]
        let guideImageURLs = [
            "GuideImages/guide1.jpg",
            "GuideImages/guide2.jpg",
            "GuideImages/guide3.avif",
            "GuideImages/guide4.jpg",
            "GuideImages/guide5.jpg"
        ]
        
        // Populate the guides array with sample data
        for index in 0..<guideNames.count {
            let guide = Guide(name: guideNames[index],
                              location: guideLocations[index],
                              quote: guideQuotes[index],
                              imageURL: guideImageURLs[index])
            guides.append(guide)
        }
        
        // Reload the table view to display the fetched data
        guideProfileView.reloadData()
    }
    
    // MARK: - UITableViewDataSource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return guides.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = guideProfileView.dequeueReusableCell(withIdentifier: "GuideTableViewCell", for: indexPath) as! GuideTableViewCell
        
        // Configure the cell with data from the corresponding guide object
        let guide = guides[indexPath.row]
        cell.guideNameLabel.text = guide.name
        
        cell.guideLocationLabel.text = guide.location
        cell.guideQuoteLabel.text = guide.quote
        cell.guideProfileImage.image = UIImage(named: guide.imageURL)
        
        return cell
    }
}
