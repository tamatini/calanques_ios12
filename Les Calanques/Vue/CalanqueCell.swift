//
//  CalanqueCell.swift
//  Les Calanques
//
//  Created by Tamatini Teahui on 12/23/18.
//  Copyright © 2018 Tamatini Teahui. All rights reserved.
//

import UIKit

class CalanqueCell: UITableViewCell {

    @IBOutlet weak var ContainerVue: UIView!
    @IBOutlet weak var calanqueIV: ImageRonde!
    @IBOutlet weak var nomLabel: UILabel!
    
    var calanque: Calanque!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setupCell(_ calanque: Calanque) {
        self.calanque = calanque
        ContainerVue.layer.cornerRadius = 20
        ContainerVue.backgroundColor = UIColor.lightGray
        nomLabel.text = self.calanque.nom
        calanqueIV.image = self.calanque.image
    }
    
}
