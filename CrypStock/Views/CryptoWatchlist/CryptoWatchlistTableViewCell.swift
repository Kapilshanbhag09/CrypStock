//
//  CryptoWatchlistTableViewCell.swift
//  CrypStock
//
//  Created by Kapil Ganesh Shanbhag on 04/04/22.
//

import UIKit

class CryptoWatchlistTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var code: UILabel!
    @IBOutlet weak var change: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var cryplogo: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //cryplogo.image=UIImage(named: "Bitcoin")
        change.layer.masksToBounds=true
        change.layer.cornerRadius=5
        cryplogo.layer.cornerRadius=30
    
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
