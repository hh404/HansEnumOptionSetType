//
//  ViewController.swift
//  HansEnumOptionSetType
//
//  Created by hans on 2018/5/2.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit

extension Notification.Name {
    
    public struct MiniGame {
        public static let E15RequstSuccess = Notification.Name(rawValue: "hk.com.hsbc.hsbchkrewards")
    }
}


struct CampaignEligibilityException: OptionSet {
    let rawValue: Int
    
    static let reachDailyCap = CampaignEligibilityException(rawValue: 1)
    static let reachCampaignCap = CampaignEligibilityException(rawValue: 2)
    static let noValidPrimaryCard = CampaignEligibilityException(rawValue: 4)
    static let campaignEnded = CampaignEligibilityException(rawValue: 8)
    static let accountDelinquency = CampaignEligibilityException(rawValue: 32)
    static let ineligibleAccount = CampaignEligibilityException(rawValue: 512)
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var exception :CampaignEligibilityException = []
        exception.insert(.accountDelinquency)
        exception.insert(.reachDailyCap)
        exception.insert(.reachCampaignCap)
        exception.insert(.noValidPrimaryCard)
        print(exception)
        
        NotificationCenter.default.addObserver(self, selector: #selector(didReceiveMemoryWarning), name: NSNotification.Name.MiniGame.E15RequstSuccess, object: nil)
        
        let dic = ["m":"m"]
        let value = dic["a"]
        print(value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

