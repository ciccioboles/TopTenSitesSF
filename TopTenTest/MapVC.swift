//
//  MapVC.swift
//  TopTenTest
//
//  Created by David Boles on 11/7/18.
//  Copyright © 2018 David Boles. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    var annoTitle = ""
    var coordinanteLat = 0.0
    var coordinanteLong = 0.0
    
    @IBOutlet weak var map: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        // Check for Location Services
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager.requestAlwaysAuthorization()
            locationManager.requestWhenInUseAuthorization()
        }
        
        zoomToUserLocation()
        
        DispatchQueue.main.async {
            self.locationManager.startUpdatingLocation()
        }
        
        //This will pull the info for where to put annotation
        let annotatedPlace = MKPointAnnotation()
        annotatedPlace.title = annoTitle
        annotatedPlace.coordinate = CLLocationCoordinate2D(latitude: coordinanteLat, longitude: coordinanteLong)
        map.addAnnotation(annotatedPlace)

        locationAuthStatus()
     
    }
    
    func locationAuthStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse || CLLocationManager.authorizationStatus() == .authorizedAlways {
            map.showsUserLocation = true
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
        func locationManager(_ manager: CLLocationManager,
                             didChangeAuthorization status: CLAuthorizationStatus) {
            locationAuthStatus()
            zoomToUserLocation()
        }

    
    func zoomToUserLocation(){
        if let userLocation = locationManager.location?.coordinate {
            let viewRegion = MKCoordinateRegion(center: userLocation, latitudinalMeters: 10000, longitudinalMeters: 10000)
            map.setRegion(viewRegion, animated: true)
        }
    }
}










////Zoom to user location
//if let userLocation = locationManager.location?.coordinate {
//    let viewRegion = MKCoordinateRegion.init(center: userLocation, latitudinalMeters: 10000, longitudinalMeters: 10000)
//    map.setRegion(viewRegion, animated: true)
//}


//    func locationManager(_ manager: CLLocationManager,
//                         didChangeAuthorization status: CLAuthorizationStatus) {
//        //Zoom to user location
//        if let userLocation = locationManager.location?.coordinate {
//            let viewRegion = MKCoordinateRegion.init(center: userLocation, latitudinalMeters: 10000, longitudinalMeters: 10000)
//            map.setRegion(viewRegion, animated: true)
//        }
//    }
