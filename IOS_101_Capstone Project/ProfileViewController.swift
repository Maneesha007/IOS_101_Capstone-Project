//
//  ProfileViewController.swift
//  IOS_101_Capstone Project
//
//  Created by Maneesha Reddy gurrala on 4/20/24.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = profileTableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
        cell.profileDetailLabel.text = profileData[indexPath.row]
        return cell
    }
    
    let profileData = ["Account Settings","Help",
                       "Become a Local Guide",
                       "Change Password",
                       "Privacy",
                       "Sign Out",
                       "Close Account",
                       "Contact & Support","version 1.0"]
    
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var profileTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
        let  nib =  UINib(nibName: "ProfileTableViewCell", bundle: nil )
        profileTableView.register(nib, forCellReuseIdentifier:"ProfileTableViewCell")
        profileTableView.dataSource = self
        profileTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    

    @IBAction func viewProfileButton(_ sender: Any) {
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



