//
//  ProfileTableViewCell.swift
//  IOS_101_Capstone Project
//
//  Created by Maneesha Reddy gurrala on 4/22/24.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    
    @IBOutlet weak var profileDetailLabel: UILabel!
    @IBOutlet weak var profileDetailButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func didTapProfileDetailButton(_ sender: UIButton) {
    }
}
