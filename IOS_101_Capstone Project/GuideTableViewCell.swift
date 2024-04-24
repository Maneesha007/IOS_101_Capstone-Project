//
//  GuideTableViewCell.swift
//  IOS_101_Capstone Project
//
//  Created by Maneesha Reddy gurrala on 4/23/24.
//

import UIKit

class GuideTableViewCell: UITableViewCell {

    @IBOutlet weak var guideProfileImage: UIImageView!
    @IBOutlet weak var guideNameLabel: UILabel!
    
    @IBOutlet weak var guideLocationLabel: UILabel!
    
    
    @IBOutlet weak var guideQuoteLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
