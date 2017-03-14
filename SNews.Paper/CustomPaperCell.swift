//
//  CustomPaperCell.swift
//  SNews.Paper
//
//  Created by Luthon Hagvinprice on 2017-03-11.
//  Copyright © 2017 Luthon Hagvinprice. All rights reserved.
//

import Foundation
import PaperCollectionView


class CustomPaperCell: PaperCell {
    
    var viewController: ContentViewController?
    
    
}

class ContentViewController: UIViewController, PaperCellChangeDelegate {
    
    @IBOutlet weak var userInfo: UILabel!
    @IBOutlet weak var usernameLabel: UILabel! // username
    @IBOutlet weak var bigLabel: UILabel! // article title
    @IBOutlet weak var smallLabel: UILabel! // full content
    @IBOutlet weak var descriptionTitleLabel: UILabel! // description
    
    @IBOutlet weak var baseContentView: UIView!
    @IBOutlet weak var roundedView: UIView!
    
// Display Images
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var postImage: UIImageView!
    
    
    func presentationRatio(_ ratio: CGFloat) {
        bigLabel.alpha = 1 - ratio
        smallLabel.alpha = ratio
        descriptionTitleLabel.alpha = ratio
    }
    
    func appendDataForPaperView(tempArticle : Article) -> Void {
        print(tempArticle)
        
        let uName = tempArticle.userName
        
        self.usernameLabel.text = uName as String
        self.bigLabel.text = tempArticle.title
        self.smallLabel.text = tempArticle.fullContent
        self.descriptionTitleLabel.text = tempArticle.description
        
        self.profileImage.image = tempArticle.userProfileImage
        self.postImage.image = tempArticle.featuredImage
        
        self.view.layoutIfNeeded()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        baseContentView.layer.shadowColor = UIColor.black.cgColor
        baseContentView.layer.shadowOffset = CGSize(width: 0, height: 2)
        baseContentView.layer.shadowOpacity = 0.2
        baseContentView.layer.shadowRadius = 2
        
        roundedView.layer.cornerRadius = 4
        roundedView.clipsToBounds = true
    }
    
    
    
}
