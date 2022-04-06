//
//  ViewController.swift
//  CrypStock
//
//  Created by Kapil Ganesh Shanbhag on 01/04/22.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let vc1=UINavigationController(rootViewController: StockWatchlistViewController() )
        let vc2=UINavigationController(rootViewController: StockPortfolioViewController())
        let vc3=UINavigationController(rootViewController: CryptoWatchlistViewController())
        let vc4=UINavigationController(rootViewController: CryptoPortfolioViewController())
        let vc5=UINavigationController(rootViewController: YourAssetViewController())
        
        vc1.tabBarItem.image=UIImage(systemName: "eyeglasses")
        vc2.tabBarItem.image=UIImage(systemName: "chart.bar.fill")
        vc3.tabBarItem.image=UIImage(systemName: "eyeglasses")
        vc4.tabBarItem.image=UIImage(systemName: "bitcoinsign.circle")
        vc5.tabBarItem.image=UIImage(systemName: "person")
        
        vc1.title="Stock Watchlist"
        vc2.title="Stock Portfolio"
        vc3.title="Crypto Watchlist"
        vc4.title="Crypto Portfolio"
        vc5.title="Your Assets"
        
        tabBar.tintColor = .systemRed
        setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: true)
        
    }


}

