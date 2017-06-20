//
//  PartyCellTableViewCell.swift
//  PartyRock
//
//  Created by Douglas Spencer on 10/20/16.
//  Copyright © 2016 Douglas Spencer. All rights reserved.
//

import UIKit

class PartyCellTableViewCell: UITableViewCell {

    
   @IBOutlet weak var PartyLabel: UILabel!
   @IBOutlet weak var PartyImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        PartyImage.animationDuration = 5
        
        PartyImage.animationImages = [
            UIImage(named: "load1")!,
            UIImage(named: "load2")!,
            UIImage(named: "load3")!,
            UIImage(named: "load4")!,
            UIImage(named: "load5")!,
            UIImage(named: "load6")!,
            UIImage(named: "load7")!,
            UIImage(named: "load8")!,
            UIImage(named: "load9")!,
            UIImage(named: "load10")!,
            UIImage(named: "load11")!,
            UIImage(named: "load12")!,
        ]
        
        PartyImage.startAnimating()
        
    }

    func UpdateUI(prock: PartyRock) {
     PartyLabel.text = prock.VideoTitle
        
        let url = URL(string: prock.ImgURL)
        
        //async operation
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url!)
                DispatchQueue.global().sync {
                    self.PartyImage.stopAnimating()
                    self.PartyImage.image = UIImage(data: data)
                }
            } catch {
                
            }
        }
    }
}
