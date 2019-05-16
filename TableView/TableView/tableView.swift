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
    @IBOutlet weak var myNameChanel: UILabel!
    @IBOutlet weak var myStatus: UIImageView!
    @IBOutlet weak var myDetailStatus: UILabel!
    
    func setVideo(video:VideoModel){
        myNameVideo.text = video.namevideo
        myNameChanel.text = video.namechanel
        myVideo.image = video.detailvideo
        myStatus.image = video.status
        myDetailStatus.text = video.detailstatus
    }

}
