//
//  BrandTableViewCell.swift
//  FipeMVVM
//
//  Created by Michel dos Santos on 30/11/20.
//

import UIKit

class BrandTableViewCell: UITableViewCell {

    @IBOutlet var labelBrand: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
