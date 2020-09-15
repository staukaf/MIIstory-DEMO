//
//  ViewController2.swift
//  Demo1
//
//  Created by Setefano Taukafa on 8/5/20.
//

import UIKit
import MapKit

class ViewController2: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAnnotations(locations: annotationLocations)
        
    }
    
    // annotation Location(s)
    let annotationLocations = [
        ["title": "Salt Lake South Mission(150)", "latitude": 40.5054, "longitude": -111.8843],
        ["title": "Kenya Nairobi Mission(232)", "latitude": 0.0236, "longitude": 37.9062],
        ["title": "New York Mission(345)", "latitude": 74.0060, "longitude": 40.7128],
        ["title": "Brazil Mission(550)", "latitude": 14.2350, "longitude": 51.9253],
            ["title": "Sydney Australia Mission(175)", "latitude": 151.2587, "longitude": 33.6855]
        ]
    
    // create annotation
    func createAnnotations(locations: [[String : Any]]) {
        for location in locations {
            let annotations = MKPointAnnotation()
            annotations.title = location["title"] as? String
            annotations.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees, longitude: location["longitude"] as! CLLocationDegrees)
            mapView.addAnnotation(annotations)
            
        }
        
    }
}
