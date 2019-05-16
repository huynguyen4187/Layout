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
    var status:UIImage
    var detailstatus:String
    
    init(namevideo:String,namechanel:String,detailvideo:UIImage,status:UIImage,detailstatus:String) {
        self.namevideo = namevideo
        self.namechanel = namechanel
        self.detailvideo = detailvideo
        self.status = status
        self.detailstatus = detailstatus
    }
}
