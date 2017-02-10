# adMobBannerAds001

I shared this code at the Hawaii iOS Developer Meetup on 2017_2_9

Seemu's AdMob Banner ads tutorial: http://youtu.be/bGu7FonWUv8

    Sign up for admob
      Click on monetize
      Copy the <ApplicationIDAlphaNumeric>
      Create a banner ad
      Copy the <AdUnitIDAlphaNumeric>

    Setup Firebase with Cocoapods:
      pod init
      update Podfile
      Add 2 dependencies:
        pod 'Firebase/Core'
        pod 'Firebase/AdMob'
      pod install
      open xcworkspace
      import Firebase into AppDelegate.swift
      import Firebase into ViewController.swift

    Code AdMob View:
      Create view
        @IBOutlet var viewWithLayer: UIView!
      Create GADBannerView
        @IBOutlet weak var bannerView: GADBannerView!
      Add appID to AppDelegate:
        GADMobileAds.configure(withApplicationID: "<ApplicationIDAlphaNumeric>")
      Add function to init ad:
        func initBannerAd() {  
          bannerView.adUnitID = "<AdUnitIDAlphaNumeric>""
          bannerView.rootViewController = self
          bannerView.load(GADRequest())
        }
      Save and build
      Might have to wait 20 minutes before ad gets served.
    FIN
