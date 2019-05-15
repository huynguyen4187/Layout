//
//  tableview2.swift
//  TableView
//
//  Created by Nguyen Hoang Huy on 5/10/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import Foundation
import UIKit

class VideoModel{

    var namevideo:String
    var namechanel:String
    var detailvideo:UIImage

    init(namevideo:String,namechanel:String,detailvideo:UIImage) {
        self.namevideo = namevideo
        self.namechanel = namechanel
        self.detailvideo = detailvideo
    }
}
