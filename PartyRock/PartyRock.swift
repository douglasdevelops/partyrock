//
//  PartyRock.swift
//  PartyRock
//
//  Created by Douglas Spencer on 10/20/16.
//  Copyright © 2016 Douglas Spencer. All rights reserved.
//

import Foundation

class PartyRock {
    
    private var _ImageURL: String!
    private var _VideoURL: String!
    private var _VideoTitle: String!
    
    var ImgURL : String {
        return _ImageURL
    }
    
    var VideoURL : String {
        return _VideoURL
    }
    
    var VideoTitle : String {
        return _VideoTitle
    }
    
    init(imgURL :String, videoURL: String, videoTitle: String) {
        _ImageURL = imgURL
        _VideoURL = videoURL
        _VideoTitle = videoTitle
    }
}
