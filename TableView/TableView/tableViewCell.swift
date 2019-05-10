//
//  tableViewCell.swift
//  TableView
//
//  Created by Nguyen Hoang Huy on 5/10/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit

class tableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myAvatar: UIImageView!
    @IBOutlet weak var LabelText: UILabel!
    @IBOutlet weak var LabelName: UILabel!
    
    func setImage(image:Image){
        myImage.image = image.image
        LabelText.text = image.title
        myAvatar.image = image.avatar
        LabelName.text = image.name
    }
    
}
