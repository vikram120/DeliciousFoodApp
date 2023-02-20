//
//  MapVC.swift
//  Delicious Food//
//  Created by Vikram Kunwar on 17/02/23.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
     
    let locationManager = CLLocationManager()
      
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        ShowAnnotationOnMap()
       
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        locationManager.stopUpdatingLocation()
        
    }
   
}
extension MapVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            print("Error")
            return
        }
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: location.coordinate, span: span)
        myMapView.setRegion(region, animated: true)
    }
    func ShowAnnotationOnMap()
    {
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 19.229789, longitude: 72.852218)
        
        annotation.title = "Luigi's are here"
        annotation.subtitle = "Testy Food"
        myMapView.addAnnotation(annotation)
    }
    
}
