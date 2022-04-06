//
//  watchlistTableViewCell.swift
//  CrypStock
//
//  Created by Kapil Ganesh Shanbhag on 04/04/22.
//

import UIKit

class watchlistTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var ltp: UILabel!
    @IBOutlet weak var exchange: UILabel!
    @IBOutlet weak var change: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
