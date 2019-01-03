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

            }
            else if buttonSelected == "Lombard Street" {
                
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
            }
        }
    }
}

