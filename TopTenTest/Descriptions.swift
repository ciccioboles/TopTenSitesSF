//
//  Desciption.swift
//  TopTenTest
//
//  Created by David Boles on 11/7/18.
//  Copyright © 2018 David Boles. All rights reserved.
//

import Foundation
import UIKit
import MapKit


class Descriptions {
    
    var descriptionText: String
    var nearByText: String
    var buttonImage: UIImage
    var detailImage: UIImage
    
    
 
    init(descriptionText: String, nearByText: String, buttonImage: UIImage, detailImage: UIImage) {
        
        self.descriptionText = descriptionText
        self.nearByText = nearByText
        self.buttonImage = buttonImage
        self.detailImage = detailImage
        
    }
    
}


let places = [
    
    Descriptions(descriptionText: "One of the most photographed locations in San Francisco, Alamo Square's famous  at Hayes and Steiner Streets is indeed a visual treat. A tight, escalating formation of Victorian houses is back-dropped by downtown skyscrapers, providing a stunning contrast. The grassy square itself is an ideal midday break. One of 11 historic districts designated by the Department of City Planning, the area includes several bed and breakfast inns.",nearByText: "famous ntown skyscrapnt of City Planning, the area includes several bed and breakfast inns.",buttonImage: #imageLiteral(resourceName: "image2"),detailImage: UIImage(named: "image1")!),
    Descriptions(descriptionText: "Lombard street", nearByText: "YYY", buttonImage: #imageLiteral(resourceName: "image2"), detailImage: UIImage(named: "image2")!),
    Descriptions(descriptionText: "CHINATOWN CHINATOWN, along the city’s eastern shoreline, is home to several waterfront attractions. With its iconic clock tower, the 1898 Ferry Building is a major food lover's draw, featuring restaurants such as the acclaimed Slanted Door, plus gourmet shops and a popular farmers' market. A series of piers offers ferries to Alcatraz Island, science exhibits at the Exploratorium, restaurants and Bay Bridge views.", nearByText: "Fishermans wharf is close.....Ferry Building is a major food lover's draw, featuring restaurants such as the acclaimed Slanted Door, plus gourmet shops and a popular farmers' market.", buttonImage: #imageLiteral(resourceName: "image2"), detailImage: UIImage(named: "image1.png")!),
    Descriptions(descriptionText: "Coit tower", nearByText: "YYY", buttonImage: #imageLiteral(resourceName: "image2"), detailImage: UIImage(named: "image1.png")!),
    Descriptions(descriptionText: "Coit tower", nearByText: "YYY", buttonImage: #imageLiteral(resourceName: "image2"), detailImage: UIImage(named: "image1.png")!),
    Descriptions(descriptionText: "Coit tower", nearByText: "YYY", buttonImage: #imageLiteral(resourceName: "image2"), detailImage: UIImage(named: "image1.png")!),
    Descriptions(descriptionText: "Coit tower", nearByText: "YYY", buttonImage: #imageLiteral(resourceName: "image2"), detailImage: UIImage(named: "image1.png")!),
    Descriptions(descriptionText: "Coit tower", nearByText: "YYY", buttonImage: #imageLiteral(resourceName: "image2"), detailImage: UIImage(named: "image1.png")!),
    Descriptions(descriptionText: "Coit tower", nearByText: "YYY", buttonImage: #imageLiteral(resourceName: "image2"), detailImage: UIImage(named: "image1.png")!),
    Descriptions(descriptionText: "Coit tower", nearByText: "YYY", buttonImage: #imageLiteral(resourceName: "image2"), detailImage: UIImage(named: "image1.png")!)
    
    
]


class PlaceLocations {
    
    var anno = MKPointAnnotation()
    var annoTitle: String
    var annoID: Int
    var coordinateLat: Double
    var coordinateLong: Double
    
    init(anno: MKPointAnnotation, annoTitle: String, annoID: Int, coordinanteLat: Double, coordinanteLong: Double) {
        
        self.anno = anno
        self.annoTitle = annoTitle
        self.annoID = annoID
        self.coordinateLat = coordinanteLat
        self.coordinateLong = coordinanteLong
        
    }
}




let placeLocations = [
    
    PlaceLocations(anno: MKPointAnnotation(), annoTitle: "Painted Ladies", annoID: 0, coordinanteLat: 37.776577, coordinanteLong: -122.432774),
    PlaceLocations(anno: MKPointAnnotation(), annoTitle: "Lombard Street", annoID: 1, coordinanteLat: 37.802155, coordinanteLong:  -122.418963),
    PlaceLocations(anno: MKPointAnnotation(), annoTitle: "ChinaTown", annoID: 2, coordinanteLat: 37.794745, coordinanteLong: -122.407805),
    PlaceLocations(anno: MKPointAnnotation(), annoTitle: "North Beach", annoID: 3, coordinanteLat: 37.776577, coordinanteLong: -122.432774),
    PlaceLocations(anno: MKPointAnnotation(), annoTitle: "Twin Peaks", annoID: 4, coordinanteLat: 37.802155, coordinanteLong:  -122.418963),
    PlaceLocations(anno: MKPointAnnotation(), annoTitle: "The Mission", annoID: 5, coordinanteLat: 37.794745, coordinanteLong: -122.407805),
    PlaceLocations(anno: MKPointAnnotation(), annoTitle: "Cable Cars", annoID: 6, coordinanteLat: 37.776577, coordinanteLong: -122.432774),
    PlaceLocations(anno: MKPointAnnotation(), annoTitle: "Baker Beach", annoID: 7, coordinanteLat: 37.802155, coordinanteLong:  -122.418963),
    PlaceLocations(anno: MKPointAnnotation(), annoTitle: "Golden Gate Bridge", annoID: 8, coordinanteLat: 37.794745, coordinanteLong: -122.407805),
    PlaceLocations(anno: MKPointAnnotation(), annoTitle: "Embarcadero", annoID: 9, coordinanteLat: 37.794745, coordinanteLong: -122.407805)
    
    ]

