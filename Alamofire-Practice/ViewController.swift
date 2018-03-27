//
//  ViewController.swift
//  Alamofire-Practice
//
//  Created by MySoftheaven BD on 25/3/18.
//  Copyright © 2018 MySoftheaven BD. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    
    var actors = [Actor]()
    
    @IBOutlet weak var actorCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: actorCollectionView.bounds.size.width / 2, height: actorCollectionView.bounds.size.height / 3)
        layout.minimumInteritemSpacing = 0.0
        layout.minimumLineSpacing = 0.0
        actorCollectionView.collectionViewLayout = layout
        
        APICall.getActorData(url: "http://microblogging.wingnity.com/JSONParsingTutorial/jsonActors") { (information) in
            self.actors = information.actors
            print(self.actors.count)
            self.actorCollectionView.reloadData()
        }
      
   
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CustomCollectionViewCell else {
            print("can not create the cell")
            return UICollectionViewCell()
        }
        
        cell.nameLabel.text = actors[indexPath.row].name
        let data = try! Data(contentsOf: URL(string: actors[indexPath.row].image)!)
        cell.imageView.image = UIImage(data: data)
        
        return cell
    }
    
    


}

