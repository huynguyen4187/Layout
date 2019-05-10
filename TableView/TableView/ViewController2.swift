//
//  ViewController2.swift
//  TableView
//
//  Created by Nguyen Hoang Huy on 5/10/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var tableview2: UITableView!
    
    var videos:[Video]=[]
    
    func createArray()->[Video]{
        var templateVideo : [Video] = []
        
        let video1 = Video(detailvideo: #imageLiteral(resourceName: "co"), namevideo: "Hoàng hôn buông dần phai")
        let video2 = Video(detailvideo: #imageLiteral(resourceName: "hoa"), namevideo: "Bông hoa tàn")
        let video3 = Video(detailvideo: #imageLiteral(resourceName: "trang"), namevideo: "Hoa trắng tinh khôi")
        
        templateVideo.append(video1)
        templateVideo.append(video2)
        templateVideo.append(video3)
        
        return templateVideo
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview2.dataSource = self
        tableview2.delegate = self
        videos = createArray()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 155
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview2.dequeueReusableCell(withIdentifier: "CELL",for : indexPath) as! tableView
        let video = videos[indexPath.row]
        cell.setVideo(video: video)
        return cell
    }
}
