//
//  ViewController2.swift
//  App
//
//  Created by Nguyen Hoang Huy on 5/13/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var icons:[Icon]=[]
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        icons = createArray()
        self.tableview.isEditing = true
        
    }
    
    func createArray()->[Icon]{
        var template:[Icon] = []
        
        let icon1 = Icon(image: #imageLiteral(resourceName: "icon_tag_blue"), title: "ブルー")
        let icon2 = Icon(image: #imageLiteral(resourceName: "icon_tag_lilac"), title: "ライラック")
        let icon3 = Icon(image: #imageLiteral(resourceName: "icon_tag_pink"), title: "ブルー")
        let icon4 = Icon(image: #imageLiteral(resourceName: "icon_tag_orange"), title: "ライラック")
        let icon5 = Icon(image: #imageLiteral(resourceName: "icon_tag_yellow"), title: "ライラック")
        let icon6 = Icon(image: #imageLiteral(resourceName: "icon_tag_green"), title: "ブルー")
        
        template.append(icon1)
        template.append(icon2)
        template.append(icon3)
        template.append(icon4)
        template.append(icon5)
        template.append(icon6)
        
        return template
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return icons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let imagecell = icons[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! tableViewCell
        cell.setIcon(icon: imagecell)
        return cell
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = self.icons[sourceIndexPath.row]
        icons.insert(movedObject, at: destinationIndexPath.row)
    }
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
}
