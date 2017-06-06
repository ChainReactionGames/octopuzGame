//
//  RoundImage.swift
//  octa
//
//  Created by Gary Gogis on 5/20/17.
//  Copyright © 2017 Gary Gogis. All rights reserved.
//

import UIKit

class RoundImage: UIImageView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 10.0
    }
    
}
