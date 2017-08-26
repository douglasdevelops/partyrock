//
//  MainVC_TableView.swift
//  PartyRock
//
//  Created by Douglas Spencer on 8/26/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import UIKit

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Number Of Sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //MARK: Number Of Rows In Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    //MARK: Did Select Row At
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyrock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: SEGUE_VIDEOVC, sender: partyrock)
    }
    
    //MARK: Cell For Row At
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tView.dequeueReusableCell(withIdentifier: PARTYROCKTABLECELL, for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            cell.UpdateUI(prock: partyRock)
            return cell
        } else
        {
            return UITableViewCell()
        }
    }
}
