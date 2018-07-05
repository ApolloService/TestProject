//
//  MapView.swift
//  TestProject
//
//  Created by Chris Kreager on 04.07.18.
//  Copyright © 2018 Chris Kreager. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapView: UIView, MKMapViewDelegate {
    
    var parentController : UIViewController!
    
    @IBOutlet weak var headerView : HeaderView!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var avatarImageView : UIImageView!
    
    func initialiseView(pController : UIViewController) {
        parentController = pController;
        headerView.initView(pController: parentController, title: "Title")
        map.showsUserLocation = true
        
        let center = CLLocationCoordinate2D(latitude: 51.5074, longitude: 0.1278)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        map.setRegion(region, animated: true)
        map.setUserTrackingMode(MKUserTrackingMode.follow, animated: true)
        
        avatarImageView.layer.cornerRadius = 30;
        avatarImageView.layer.borderWidth = 2;
        avatarImageView.layer.borderColor = UIColor.white.cgColor
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            let pin = mapView.view(for: annotation) ?? MKAnnotationView(annotation: annotation, reuseIdentifier: nil)
            pin.image = UIImage(named: "Shape")
            return pin
            
        } else {
            // handle other annotations
            
        }
        return nil
    }
}
