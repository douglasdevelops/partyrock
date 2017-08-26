//
//  VideoVC.swift
//  PartyRock
//
//  Created by Douglas Spencer on 10/20/16.
//  Copyright © 2016 Douglas Spencer. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var webView: UIWebView!
    
    
    private var _PartRock: PartyRock!
    
    var pRock: PartyRock {
        get {
            return _PartRock
        }
        set {
            _PartRock = newValue
        }
    }
    
    //MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        webView.loadHTMLString(pRock.VideoURL, baseURL: nil)
        
    }
    
    //MARK: IBOutlets
    @IBAction func BtnDismiss(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
}
