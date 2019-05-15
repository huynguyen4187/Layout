//
//  AddingViewController.swift
//  TableView
//
//  Created by Nguyen Hoang Huy on 5/15/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit


protocol AddingProtocol {
    func insertvideo(model:VideoModel)
}

class AddingViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var myTitleVideo: UITextField!
    
    @IBOutlet weak var myNameChanel: UITextField!
    var delegate:AddingProtocol!
    
    @IBOutlet weak var myViewAdding: UIView!
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addingvideo(_ sender: Any) {
        
        let videoModel = VideoModel(namevideo: myTitleVideo.text!, namechanel: myNameChanel.text!)
        delegate.insertvideo(model: videoModel)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
