//
//  CalanqueCellAlternative.swift
//  Les Calanques
//
//  Created by Tamatini Teahui on 12/23/18.
//  Copyright © 2018 Tamatini Teahui. All rights reserved.
//

import UIKit

class CalanqueCellAlternative: UITableViewCell {
    
    
    
    @IBOutlet weak var calanqueIV: UIImageView!
    @IBOutlet weak var nomLabel: UILabel!
    
    var calanque: Calanque? {
        didSet {
            if calanque != nil {
                calanqueIV.image = calanque!.image
                nomLabel.text = calanque!.nom
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
