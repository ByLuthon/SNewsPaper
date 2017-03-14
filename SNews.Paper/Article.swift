//
//  ArticleView.swift
//  SNews.Paper
//
//  Created by Luthon Hagvinprice on 2017-03-12.
//  Copyright © 2017 Luthon Hagvinprice. All rights reserved.
//

import UIKit

class Article {
    
    // MARK:- public API
    
    // user / Publication
    var userName = ""
    var userDetails = ""
    var userProfileImage: UIImage!
    
    // Article info
    var title = ""
    var description = ""
    var fullContent = ""
    var numberOfMembers = ""
    var numberOfPosts = ""
    var featuredImage: UIImage!
    
    init(userName: String, userDetails: String, userProfileImage: UIImage!, title: String, description: String, featuredImage: UIImage!)
    {
        
        // Load user information
        self.userName = userName
        self.userProfileImage = userProfileImage
        self.userDetails = userDetails
        
        // Load article details
        self.title = title
        self.description = description
        self.featuredImage = featuredImage
        
        
    }
    
    // MARK:- Private
    static func creatArticle() ->[Article]
    {
        return [ Article ( userName:"Luthon", userDetails:"Work at SNews a part of Swedbank News", userProfileImage: UIImage(named:"male11")!, title:"Some Content description bold text that will shrink into more info", description:"Mr. Bharara was a highly public prosecutor who relished the spotlight throughout more than seven years in office. He pursued several high-profile cases involving Wall Street, and he was in the midst of investigating fund-raising by Bill de Blasio, the mayor of New York, and preparing to try former top aides to the governor of New York, Andrew M. Cuomo, who are both Democrats. It was not immediately clear how his departure would affect those cases and others that were pending. Mr. Bharara was a highly public prosecutor who relished the spotlight throughout more than seven years in office", featuredImage: UIImage(named:"justice")!),
                 
                 
                 Article ( userName:"NY Times", userDetails:"Work at SNews a part of Swedbank News", userProfileImage: UIImage(named:"female2")!, title:"As Dubai’s Skyline Adds a Trophy, the Architect Calls It Stolen", description:"Now, Dubai is about to gain another landmark. The Dubai Frame, set to open this year, is literally and figuratively a frame imposed on the overwhelming view — two parallel towers linked by an observation deck. It is a marker of how far the city has traveled, drawing the eye from the drab buildings of the old settlement along Dubai Creek to the riotous profusion of neon-draped skyscrapers stretching south to the Persian Gulf. It is a totem of Dubai’s ambitions.", featuredImage: UIImage(named:"justice")!),
                 
                 
                 Article ( userName:"Financial Times", userDetails:"Work at SNews a part of Swedbank News", userProfileImage: UIImage(named:"male11")!, title:"Some Content description bold text that will shrink into more info", description:"Mr. Bharara was a highly public prosecutor who relished the spotlight throughout more than seven years in office. He pursued several high-profile cases involving Wall Street, and he was in the midst of investigating fund-raising by Bill de Blasio, the mayor of New York, and preparing to try former top aides to the governor of New York, Andrew M. Cuomo, who are both Democrats. It was not immediately clear how his departure would affect those cases and others that were pending. Mr. Bharara was a highly public prosecutor who relished the spotlight throughout more than seven years in office", featuredImage: UIImage(named:"justice")!),
                 
                 Article ( userName:"Dagens Nyheter", userDetails:"Work at SNews a part of Swedbank News", userProfileImage: UIImage(named:"female2")!, title:"Some Content description bold text that will shrink into more info", description:"Mr. Bharara was a highly public prosecutor who relished the spotlight throughout more than seven years in office. He pursued several high-profile cases involving Wall Street, and he was in the midst of investigating fund-raising by Bill de Blasio, the mayor of New York, and preparing to try former top aides to the governor of New York, Andrew M. Cuomo, who are both Democrats. It was not immediately clear how his departure would affect those cases and others that were pending. Mr. Bharara was a highly public prosecutor who relished the spotlight throughout more than seven years in office", featuredImage: UIImage(named:"justice")!),
                 
                 Article ( userName:"SNews", userDetails:"Work at SNews a part of Swedbank News", userProfileImage: UIImage(named:"male11")!, title:"Some Content description bold text that will shrink into more info", description:"Mr. Bharara was a highly public prosecutor who relished the spotlight throughout more than seven years in office. He pursued several high-profile cases involving Wall Street, and he was in the midst of investigating fund-raising by Bill de Blasio, the mayor of New York, and preparing to try former top aides to the governor of New York, Andrew M. Cuomo, who are both Democrats. It was not immediately clear how his departure would affect those cases and others that were pending. Mr. Bharara was a highly public prosecutor who relished the spotlight throughout more than seven years in office", featuredImage: UIImage(named:"justice")!),
        ]
    }
}
