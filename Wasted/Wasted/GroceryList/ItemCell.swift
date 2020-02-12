//
//  GroceryItemCell.swift
//  Wasted
//
//  Created by Drew Scheffer on 11/1/19.
//  Copyright © 2019 Drew Scheffer. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemQuantityLabel: UILabel!
    
    func setItem(item: GroceryItem){
        itemImageView.image = item.image
        itemNameLabel.text = item.title
        itemQuantityLabel.text = String(item.quantity)
    }
}
