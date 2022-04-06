//
//  CryptoInfoViewController.swift
//  CrypStock
//
//  Created by Kapil Ganesh Shanbhag on 04/04/22.
//

import UIKit

class CryptoInfoViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var change: UILabel!
    var keyvar=String()
    var namevar=String()
    var pricevar=String()
    var changevar=String()
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text=keyvar
        self.title=namevar
        price.text="₹"+pricevar
        change.text=changevar

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
