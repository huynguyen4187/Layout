//
//  tableView.swift
//  TableView
//
//  Created by Nguyen Hoang Huy on 5/10/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit

class tableView: UITableViewCell {

    @IBOutlet weak var myVideo: UIImageView!
    @IBOutlet weak var myNameVideo: UILabel!
    
    func setVideo(video:Video){
        myVideo.image = video.detailvideo
        myNameVideo.text = video.namevideo
    }

}
