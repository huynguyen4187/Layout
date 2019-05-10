//
//  ImageView.swift
//  TableView
//
//  Created by Nguyen Hoang Huy on 5/10/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import Foundation
import UIKit

class Image {
    var  image:UIImage
    var title:String
    var avatar:UIImage
    var name:String
    
    init(image:UIImage,title:String,avatar:UIImage,name:String) {
        self.image = image
        self.title = title
        self.avatar = avatar
        self.name = name
    }
}
	    
