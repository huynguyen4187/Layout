//
//  ViewController3.swift
//  App
//
//  Created by Nguyen Hoang Huy on 5/14/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
@IBOutlet weak var ibConstrainScrollViewWidth: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        ibConstrainScrollViewWidth.constant = UIScreen.main.bounds.width
        // Do any additional setup after loading the view.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
