//
//  ActorViewController.swift
//  Alamofire-Practice
//
//  Created by MySoftheaven BD on 28/3/18.
//  Copyright © 2018 MySoftheaven BD. All rights reserved.
//

import UIKit

class ActorViewController: UIViewController {

    @IBOutlet weak var coverView: UIView!
    @IBOutlet weak var actonNameOutlet: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var spouseLabel: UILabel!
    @IBOutlet weak var childrenLabel: UILabel!
    
    var actorInformation : Actor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = actorInformation?.name {
            actonNameOutlet.text = name
        }
        
        if let imageString = actorInformation?.image {
            do {
                let data = try Data(contentsOf: URL(string: imageString )!)
                imageView.image = UIImage(data: data)
            }
            catch{
                print(error)
            }
        }
        
        if let description = actorInformation?.description {
            descriptionLabel.text = description
        }
        if let dob = actorInformation?.dob {
            dobLabel.text = "Date of Birth:  \(dob)"
        }
        
        if let country = actorInformation?.country {
            countryLabel.text = "Country: \(country)"
        }
        
        if let height = actorInformation?.height {
            heightLabel.text = "Height: \(height)"
        }
        
        if let spouse = actorInformation?.height {
            spouseLabel.text = "Spouse: \(spouse)"
        }
        
        if let children = actorInformation?.children {
            childrenLabel.text = "Children: \(children)"
        }

    }
    
    override func viewDidLayoutSubviews() {
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.frame.size = self.coverView.frame.size
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.white.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        self.coverView.layer.insertSublayer(gradientLayer, at: 0)
        super.viewDidLayoutSubviews()
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
