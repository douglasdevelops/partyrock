//
//  VideoVC.swift
//  PartyRock
//
//  Created by Douglas Spencer on 10/20/16.
//  Copyright © 2016 Douglas Spencer. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        webView.loadHTMLString(pRock.VideoURL, baseURL: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BtnDismiss(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
