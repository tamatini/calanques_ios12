//
//  ControllerAvecCarte.swift
//  Les Calanques
//
//  Created by Tamatini Teahui on 12/21/18.
//  Copyright © 2018 Tamatini Teahui. All rights reserved.
//

import UIKit
import MapKit

class ControllerAvecCarte: UIViewController, MKMapViewDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    
    var calanques: [Calanque] = CalanqueCollection().all()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        addAnnotation()
    }
    
    func toDetail(calanque: Calanque) {
        performSegue(withIdentifier: "Detail", sender: calanque)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Detail" {
        if let controller = segue.destination as? DetailViewController {
            controller.calanqueRecue = sender as? Calanque
            }
        }
    }
    
    func addAnnotation() {
        for calanque in calanques {
       //     let annotation = MKPointAnnotation()
       //     annotation.coordinate = calanque.coordonee
       //     annotation.title = calanque.nom
       //     mapView.addAnnotation(annotation)
            
            //annotation custom
            
            let annotation = MonAnnotation(calanque)
            mapView.addAnnotation(annotation)
        }
    }
    
    
    
    
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let reuseIdentifier = "ReuseID"
        if annotation.isKind(of: MKUserLocation.self) {
            return nil
        }
   
        
        if let anno = annotation as? MonAnnotation {
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseIdentifier)
            if annotationView == nil {
                
                //override
                //annotationView = monAnnotationView(annotation: anno, reuseIdentifier: reuseIdentifier)
                
                annotationView = monAnnotationView(controller: self, annotation: anno, reuseIdentifier: reuseIdentifier)
                
                //annotationView = MKAnnotationView(annotation: anno, reuseIdentifier: reuseIdentifier)
                //annotationView?.image = UIImage(named: "placeholder")
                //annotationView?.canShowCallout = true
                return annotationView
            } else {
                return annotationView
            }
        }
        return nil
    }
        
    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: mapView.mapType = MKMapType.standard
        case 1: mapView.mapType = .satellite
        case 2: mapView.mapType = .hybrid
        default: break

        }
    }
    
    @IBAction func getPosition(_ sender: Any) {
    }

}
