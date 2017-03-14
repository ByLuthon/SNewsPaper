//
//  ViewController.swift
//  SNews.Paper
//
//  Created by Luthon Hagvinprice on 2017-03-11.
//  Copyright © 2017 Luthon Hagvinprice. All rights reserved.
//

import UIKit
import PaperCollectionView


let kReuseID = "Cell"

class ViewController: UIViewController, UICollectionViewDataSource, PaperViewDelegate {
    
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var paperView: PaperView!
    
    let arr_Article = Article.creatArticle()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        paperView.collectionViewController.collectionView?.register(CustomPaperCell.self, forCellWithReuseIdentifier: kReuseID)
        paperView.addShadow()
        
        
        print("array: \(arr_Article)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func paperViewHeightDidChange(_ height: CGFloat, percentMaximized percent: CGFloat) {
        blackView.alpha = percent
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr_Article.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView .dequeueReusableCell(withReuseIdentifier: kReuseID, for: indexPath) as! CustomPaperCell
        
        if cell.viewController == nil {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ContentViewController") as! ContentViewController
            cell.delegate = vc
            paperView.collectionViewController.addChildViewController(vc)
            cell.scaledView = vc.view
            vc.didMove(toParentViewController: paperView.collectionViewController)
            cell.viewController = vc
            
            cell.layer.cornerRadius = 4
            cell.clipsToBounds = true
        }
        
        let instanceArticle = arr_Article[indexPath.row] 
        
        cell.viewController?.appendDataForPaperView(tempArticle: instanceArticle)
        
        /*
        cell.viewController?.usernameLabel.text = instanceArticle.userName
        cell.viewController?.bigLabel.text = instanceArticle.title
        cell.viewController?.smallLabel.text = instanceArticle.fullContent
        cell.viewController?.descriptionTitleLabel.text = instanceArticle.description
        
        cell.viewController?.profileImage.image = instanceArticle.userProfileImage
        cell.viewController?.postImage.image = instanceArticle.featuredImage
        */
        cell.layoutIfNeeded()
        
        print("UserName: \(instanceArticle.userName)")
        
        
        return cell
    }
    
    
    // MARK:- UI Collection View Data source
    
    private var articles = Article.creatArticle()
}
