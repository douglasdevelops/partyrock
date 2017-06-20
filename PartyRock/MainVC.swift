//
//  ViewController.swift
//  PartyRock
//
//  Created by Douglas Spencer on 10/20/16.
//  Copyright © 2016 Douglas Spencer. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tView: UITableView!
    
    var partyRocks = [PartyRock]()

        override func viewDidLoad() {
        super.viewDidLoad()
            
            let p1 = PartyRock(imgURL: VIDEO1IMAGEURL, videoURL: VIDEO1URL, videoTitle: VIDEO1Title)
            let p2 = PartyRock(imgURL: VIDEO2IMAGEURL, videoURL: VIDEO2URL, videoTitle: VIDEO2Title)
            let p3 = PartyRock(imgURL: VIDEO3IMAGEURL, videoURL: VIDEO3URL, videoTitle: VIDEO3Title)
            let p4 = PartyRock(imgURL: VIDEO4IMAGEURL, videoURL: VIDEO4URL, videoTitle: VIDEO4Title)
            let p5 = PartyRock(imgURL: VIDEO5IMAGEURL, videoURL: VIDEO5URL, videoTitle: VIDEO5Title)
            
            
            partyRocks.append(p1)
            partyRocks.append(p2)
            partyRocks.append(p3)
            partyRocks.append(p4)
            partyRocks.append(p5)
            
            tView.delegate = self
            tView.dataSource = self
            
            
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyrock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyrock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                dest.pRock = party
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCellTableViewCell {
            
            let partyRock = partyRocks[indexPath.row]
            cell.UpdateUI(prock: partyRock)
            return cell
        } else
        {
            return UITableViewCell()
        }
}
}
