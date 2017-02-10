//
//  ViewController.swift
//  runnerRunner
//
//  Created by David Neely on 2/7/17.
//  Copyright © 2017 David Neely. All rights reserved.
//

import UIKit

import Firebase

class ViewController: UIViewController {
    
    @IBOutlet var viewWithLayer: UIView!
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        initBannerAd()
    }
    
    func initBannerAd() {
        
        bannerView.adUnitID = "ADMOB_AD_UNIT_ID"
        
        bannerView.rootViewController = self
        
        bannerView.load(GADRequest())
    }
}
