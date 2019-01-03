//
//  ViewController.swift
//  TopTenTest
//
//  Created by David Boles on 11/7/18.
//  Copyright © 2018 David Boles. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var buttonSelected = ""
    
    
    @IBAction func paintedLadiesPressed(_ sender: Any) {
        buttonSelected = "Painted Ladies"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func lombardPressed(_ sender: Any) {
        buttonSelected = "Lombard Street"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func chinatownPressed(_ sender: Any) {
        buttonSelected = "ChinaTown"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func northBeachPressed(_ sender: Any) {
        buttonSelected = "North Beach"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func twinPeaksPressed(_ sender: Any) {
        buttonSelected = "Twin Peaks"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func theMissionPressed(_ sender: Any) {
        buttonSelected = "The Mission"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func cableCarsPressed(_ sender: Any) {
        buttonSelected = "Cable Cars"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func bakerBeachPressed(_ sender: Any) {
        buttonSelected = "Baker Beach"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func goldenGatePressed(_ sender: Any) {
        buttonSelected = "Golden Gate Bridge"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func embarcaderoPressed(_ sender: Any) {
        buttonSelected = "Embarcadero"
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let detailVC = segue.destination as! DetailVC
            
            if buttonSelected == "Painted Ladies" {
                
                detailVC.desText = places[0].descriptionText
                detailVC.desNearByText = places[0].nearByText
                detailVC.image = places[0].detailImage
                detailVC.annoID = 0
                detailVC.navigationItem.title = "Painted Ladies"

            } else if buttonSelected == "Lombard Street" {
                
                detailVC.desText = places[1].descriptionText
                detailVC.desNearByText = places[1].nearByText
                detailVC.image = places[1].detailImage
                detailVC.annoID = 1
                detailVC.navigationItem.title = "Lombard Street"
                
            } else if buttonSelected == "ChinaTown" {
                
                detailVC.desText = places[2].descriptionText
                detailVC.desNearByText = places[2].nearByText
                detailVC.image = places[1].detailImage
                detailVC.annoID = 2
                detailVC.navigationItem.title = "China Town"
                
            } else if buttonSelected == "North Beach" {
                
                detailVC.desText = places[1].descriptionText
                detailVC.desNearByText = places[1].nearByText
                detailVC.image = places[1].detailImage
                detailVC.annoID = 3
                detailVC.navigationItem.title = "North Beach"
                
            } else if buttonSelected == "Twin Peaks" {
                
                detailVC.desText = places[2].descriptionText
                detailVC.desNearByText = places[2].nearByText
                detailVC.image = places[1].detailImage
                detailVC.annoID = 4
                detailVC.navigationItem.title = "Twin Peaks"
                
            } else if buttonSelected == "The Mission" {
                
                detailVC.desText = places[1].descriptionText
                detailVC.desNearByText = places[1].nearByText
                detailVC.image = places[1].detailImage
                detailVC.annoID = 5
                detailVC.navigationItem.title = "The Mission"
                
            } else if buttonSelected == "Cable Cars" {
                
                detailVC.desText = places[2].descriptionText
                detailVC.desNearByText = places[2].nearByText
                detailVC.image = places[1].detailImage
                detailVC.annoID = 6
                detailVC.navigationItem.title = "Cable Cars"
                
            } else if buttonSelected == "Baker Beach" {
                
                detailVC.desText = places[1].descriptionText
                detailVC.desNearByText = places[1].nearByText
                detailVC.image = places[1].detailImage
                detailVC.annoID = 7
                detailVC.navigationItem.title = "Baker Beach"
                
            } else if buttonSelected == "Golden Gate Bridge" {
                
                detailVC.desText = places[2].descriptionText
                detailVC.desNearByText = places[2].nearByText
                detailVC.image = places[1].detailImage
                detailVC.annoID = 8
                detailVC.navigationItem.title = "Golden Gate Bridge"
                
            } else if buttonSelected == "Embarcadero" {
                
                detailVC.desText = places[1].descriptionText
                detailVC.desNearByText = places[1].nearByText
                detailVC.image = places[1].detailImage
                detailVC.annoID = 9
                detailVC.navigationItem.title = "Embarcadero"
                
            }
        }
    }
}

