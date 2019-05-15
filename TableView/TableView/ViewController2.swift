//
//  ViewController2.swift
//  TableView
//
//  Created by Nguyen Hoang Huy on 5/10/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource,AddingProtocol {

    @IBOutlet weak var tableview2: UITableView!

    var videos:[VideoModel]=[]
    
//    func createArray()->[Video]{
//        var templateVideo : [Video] = []
//        
//        let video1 = Video(detailvideo: #imageLiteral(resourceName: "co"), namevideo: "Hoàng hôn buông dần phai", namechanel: "VietNam Esport TV")
//        let video2 = Video(detailvideo: #imageLiteral(resourceName: "hoa"), namevideo: "Bông hoa tàn", namechanel: "Tinh tế")
//        templateVideo.append(video1)
//        templateVideo.append(video2)
//        return templateVideo
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview2.dataSource = self
        tableview2.delegate = self
//        videos = createArray()
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        self.view.isUserInteractionEnabled = true
    }

    func insertvideo(model: VideoModel) {
        videos.append(model)
        let indexPath = IndexPath(row: videos.count-1, section: 0)
        tableview2.beginUpdates()
        tableview2.insertRows(at: [indexPath], with:  .automatic)
        tableview2.endUpdates()
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoadding"{
            let vc:AddingViewController = segue.destination as! AddingViewController
            vc.delegate = self
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview2.dequeueReusableCell(withIdentifier: "CELL",for : indexPath) as! tableView
        let video = videos[indexPath.row]
        cell.setVideo(video: video)
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
}
extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}
