//
//  ViewController.swift
//  MakingMoney
//
//  Created by Andrew Seeley on 27/12/16.
//  Copyright © 2016 Seemu. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet var bannerView: GADBannerView!
    var interstitial: GADInterstitial!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        bannerView.adUnitID = "ca-app-pub-3390414212527743/5796017715"
//        bannerView.rootViewController = self
//        bannerView.load(GADRequest())

        interstitial = GADInterstitial(adUnitID: "")
        let request = GADRequest()
        // Request test ads on devices you specify. Your test device ID is printed to the console when
        // an ad request is made.
        request.testDevices = [ kGADSimulatorID, "2077ef9a63d2b398840261c8221a0c9b" ]
        interstitial.load(request)
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showAd(_ sender: Any) {
        if interstitial.isReady {
            interstitial.present(fromRootViewController: self)
        } else {
            print("Ad wasn't ready")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

