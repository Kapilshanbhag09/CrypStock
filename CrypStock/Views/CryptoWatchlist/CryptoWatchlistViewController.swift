//
//  CryptoWatchlistViewController.swift
//  CrypStock
//
//  Created by Kapil Ganesh Shanbhag on 01/04/22.
//

import UIKit

class CryptoWatchlistViewController: UIViewController {
    @IBOutlet weak var cryptotable: UITableView!
    var cellid="cryptowatchlisttableviewcell"
    var tableid="cryptowatchlisttableview"
    var cellclassname="CryptoWatchlistTableViewCell"
    var name=["Bitcoin","Ethereum","Solana"]
    var code=["BTC","ETH","SOL"]
    var change=["-0.47%","-0.27%","+10.34%"]
    var price=["3600000","272503","10,615.91"]
    var logolink=["https://bitcoin.org/img/icons/opengraph.png?1648897668",
                  "https://totalcoin.io/uploads/coins/big/eth.png",
                  "https://upload.wikimedia.org/wikipedia/en/b/b9/Solana_logo.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cryptotable.dataSource=self
        cryptotable.delegate=self
        self.cryptotable.register(UINib(nibName: cellclassname, bundle: nil), forCellReuseIdentifier: cellid)
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(cryptotablerefresh), for: .valueChanged)
        cryptotable.refreshControl=refreshControl
        
    }
    @objc func cryptotablerefresh(refreshControl: UIRefreshControl) {
        print("Table pulled down")

        // somewhere in your code you might need to call:
        refreshControl.endRefreshing()
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
extension CryptoWatchlistViewController: UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let story: UIStoryboard = UIStoryboard(name: "CryptoInfoViewController", bundle: nil)
        //let new = story.instantiateViewController(withIdentifier: "CryptoInfoViewController")as! CryptoInfoViewController
        //new.key=code[indexPath.row]
        let CryptoInfoViewControllerclass=CryptoInfoViewController()
        CryptoInfoViewControllerclass.keyvar=code[indexPath.row]
        CryptoInfoViewControllerclass.namevar=name[indexPath.row]
        CryptoInfoViewControllerclass.pricevar=price[indexPath.row]
        CryptoInfoViewControllerclass.changevar=change[indexPath.row]
       // print("Selected \(code[indexPath.row])")
        self.navigationController?.pushViewController(CryptoInfoViewControllerclass, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return code.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier:cellid, for: indexPath) as! CryptoWatchlistTableViewCell
        cell.name.text=name[indexPath.row]
        cell.code.text=code[indexPath.row]
        cell.price.text="₹"+price[indexPath.row]
        cell.change.text=change[indexPath.row]
        guard let imageURL = URL(string: logolink[indexPath.row]) else { return cell}
        DispatchQueue.global().async {
            guard let imageData = try? Data(contentsOf: imageURL) else { return }

            let image = UIImage(data: imageData)
            DispatchQueue.main.async {
                cell.cryplogo.image = image
            }
        }
       
        return cell
    }
    
    
}
