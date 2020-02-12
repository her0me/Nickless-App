//
//  GroceryItem.swift
//  Wasted
//
//  Created by Drew Scheffer on 11/1/19.
//  Copyright © 2019 Drew Scheffer. All rights reserved.
//

import Foundation
import UIKit

class GroceryItem {
    var image: UIImage
    var title: String
    var quantity: String
    
    init(image: UIImage, title: String, quantity: String){
        self.image = image
        self.title = title
        self.quantity = quantity
    }
}
