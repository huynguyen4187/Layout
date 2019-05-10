//
//  ViewController.swift
//  TableView
//
//  Created by Nguyen Hoang Huy on 5/10/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var images:[Image]=[]
    
    
    @IBOutlet weak var tableview: UITableView!
    
    func  createArray()->[Image]{
        var templateImage : [Image] = []
        let image1 = Image(image: #imageLiteral(resourceName: "trang") , title: "Hoa Tuyết",avatar: #imageLiteral(resourceName: "icons8-male-user-50"),name:"Nguyễn Hoàng Huy")
        let image2 = Image(image: #imageLiteral(resourceName: "co"), title: "Cỏ ba lá",avatar: #imageLiteral(resourceName: "icons8-female-profile-50"),name:"Nguyễn Yến Bảo Uyên")
        let image3 = Image(image: #imageLiteral(resourceName: "hoa"), title: "Tinh khôi",avatar: #imageLiteral(resourceName: "icons8-male-user-50"), name:"Bùi Khác Hưng Tài")
        
        templateImage.append(image1)
        templateImage.append(image2)
        templateImage.append(image3)
        
        return templateImage
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        
        tableview.delegate = self
        images = createArray()
        
        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let image = images[indexPath.row]
        let cell = tableview.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! tableViewCell
        cell.setImage(image: image)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
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

