//
//  WeaponsSecondCell.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 05/09/24.
//

import UIKit

class WeaponsSecondCell: UITableViewCell {

    @IBOutlet weak var weaponsTitle: UILabel!
    
    @IBOutlet weak var weaponsDescription: UILabel!
    
    @IBOutlet weak var weaponsImage: UIImageView!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
