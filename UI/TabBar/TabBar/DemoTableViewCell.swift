//
//  DemoTableViewCell.swift
//  TabBar
//
//  Created by ustadev.uz on 17/04/24.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet weak var labelCell: UILabel!

    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
