//
//  BusinessDetailViewController.swift
//  Yelp
//
//  Created by Anubhav Saxena on 1/25/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessDetailViewController: UIViewController {

    
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var ratingsImageView: UIImageView!
    @IBOutlet weak var ratingsCountLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var cuisineLabel: UILabel!
    
    var business: Business?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let business = business {
            titleLabel.text = business.name
            thumbImageView.setImageWith(business.imageURL!)
            thumbImageView.layer.cornerRadius = 5
            thumbImageView.clipsToBounds = true
            addressLabel.text = business.address
            ratingsImageView.setImageWith(business.ratingImageURL!)
            ratingsCountLabel.text = "\(business.reviewCount!) Reviews"
            cuisineLabel.text = "Serves \(business.categories!)"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
