//
//  bouton_Arrondi.swift
//  Les Calanques
//
//  Created by Tamatini Teahui on 12/23/18.
//  Copyright © 2018 Tamatini Teahui. All rights reserved.
//

import UIKit

class bouton_Arrondi: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        layer.cornerRadius = 10
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
