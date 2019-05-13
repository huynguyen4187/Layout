//
//  tableViewCell.swift
//  App
//
//  Created by Nguyen Hoang Huy on 5/13/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit

class tableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    func setIcon(icon:Icon){
        myImage.image = icon.image
        myLabel.text = icon.title
    }

    

}
