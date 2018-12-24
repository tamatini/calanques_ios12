//
//  MonAnnotation.swift
//  Les Calanques
//
//  Created by Tamatini Teahui on 12/24/18.
//  Copyright © 2018 Tamatini Teahui. All rights reserved.
//

import UIKit
import MapKit
class MonAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var calanque: Calanque
    var title: String?
    
    init(_ calanque: Calanque) {
        self.calanque = calanque
        coordinate = self.calanque.coordonee
        title = self.calanque.nom
    }
}
