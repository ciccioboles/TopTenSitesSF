//
//  DetailVC.swift
//  TopTenTest
//
//  Created by David Boles on 11/7/18.
//  Copyright © 2018 David Boles. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var desText = ""
    var desNearByText = ""
    var image = UIImage()
    var annoID = -1
    
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var nearByText: UITextView!
    @IBOutlet weak var detailImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        
        descriptionText.text = desText
        nearByText.text = desNearByText
        detailImage.image = image
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mapSegue" {
            let mapVC = segue.destination as! MapVC
            
            if annoID == 0 {
                
                mapVC.annoTitle = placeLocations[0].annoTitle
                mapVC.coordinanteLat = placeLocations[0].coordinateLat
                mapVC.coordinanteLong = placeLocations[0].coordinateLong
                mapVC.navigationItem.title = "Painted Ladies"
            
            } else if annoID == 1 {
                
                mapVC.annoTitle = placeLocations[1].annoTitle
                mapVC.coordinanteLat = placeLocations[1].coordinateLat
                mapVC.coordinanteLong = placeLocations[1].coordinateLong
                mapVC.navigationItem.title = "Lombard Street"
            
            } else if annoID == 2 {
                
                mapVC.annoTitle = placeLocations[2].annoTitle
                mapVC.coordinanteLat = placeLocations[2].coordinateLat
                mapVC.coordinanteLong = placeLocations[2].coordinateLong
                mapVC.navigationItem.title = "China Town"
                
            } else if annoID == 3 {
                
                mapVC.annoTitle = placeLocations[3].annoTitle
                mapVC.coordinanteLat = placeLocations[3].coordinateLat
                mapVC.coordinanteLong = placeLocations[3].coordinateLong
                mapVC.navigationItem.title = "Lombard Street"
                
            } else if annoID == 4 {
                
                mapVC.annoTitle = placeLocations[4].annoTitle
                mapVC.coordinanteLat = placeLocations[4].coordinateLat
                mapVC.coordinanteLong = placeLocations[4].coordinateLong
                mapVC.navigationItem.title = "China Town"
                
            } else if annoID == 5 {
                
                mapVC.annoTitle = placeLocations[5].annoTitle
                mapVC.coordinanteLat = placeLocations[5].coordinateLat
                mapVC.coordinanteLong = placeLocations[5].coordinateLong
                mapVC.navigationItem.title = "Lombard Street"
                
            } else if annoID == 6 {
                
                mapVC.annoTitle = placeLocations[6].annoTitle
                mapVC.coordinanteLat = placeLocations[6].coordinateLat
                mapVC.coordinanteLong = placeLocations[6].coordinateLong
                mapVC.navigationItem.title = "China Town"
                
            } else if annoID == 7 {
                
                mapVC.annoTitle = placeLocations[7].annoTitle
                mapVC.coordinanteLat = placeLocations[7].coordinateLat
                mapVC.coordinanteLong = placeLocations[7].coordinateLong
                mapVC.navigationItem.title = "Lombard Street"
                
            } else if annoID == 8 {
                
                mapVC.annoTitle = placeLocations[8].annoTitle
                mapVC.coordinanteLat = placeLocations[8].coordinateLat
                mapVC.coordinanteLong = placeLocations[8].coordinateLong
                mapVC.navigationItem.title = "China Town"
                
            } else if annoID == 9 {
                
                mapVC.annoTitle = placeLocations[9].annoTitle
                mapVC.coordinanteLat = placeLocations[9].coordinateLat
                mapVC.coordinanteLong = placeLocations[9].coordinateLong
                mapVC.navigationItem.title = "Lombard Street"
                
            } else if annoID == 10 {
                
                mapVC.annoTitle = placeLocations[10].annoTitle
                mapVC.coordinanteLat = placeLocations[10].coordinateLat
                mapVC.coordinanteLong = placeLocations[10].coordinateLong
                mapVC.navigationItem.title = "China Town"
                
            }
        }
    }
}
