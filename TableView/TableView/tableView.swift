//
//  tableView.swift
//  TableView
//
//  Created by Nguyen Hoang Huy on 5/10/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit
import RealmSwift
class tableView: UITableViewCell {

    @IBOutlet weak var myVideo: UIImageView!
    @IBOutlet weak var myNameVideo: UILabel!
    @IBOutlet weak var myNameChanel: UILabel!
    @IBOutlet weak var myStatus: UIImageView!
    @IBOutlet weak var myDetailStatus: UILabel!
    
    func setVideo(video:VideoModel){
        
        
        myNameVideo.text = video.namevideo
        myNameChanel.text = video.namechanel
        myVideo.image = UIImage.init(data: video.detailvideo)
        
        
        if ( video.status) {
            myStatus.image = UIImage.init(named: "Checked")
        } else {
            myStatus.image = nil
        }
        
        myDetailStatus.text = video.detailstatus
        
        
    }

}
