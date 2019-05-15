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

class AddingViewController: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var myTitleVideo: UITextField!
    @IBOutlet weak var myNameChanel: UITextField!
    @IBOutlet weak var myVideo: UIImageView!
    
    var delegate:AddingProtocol!
    var videopicker = UIImagePickerController()
    
    @IBOutlet weak var myViewAdding: UIView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        videopicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addingvideo(_ sender: Any) {
        
        let videoModel = VideoModel(namevideo: myTitleVideo.text!, namechanel: myNameChanel.text!,detailvideo : myVideo.image!)
        delegate.insertvideo(model: videoModel)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func onClickPickVideo(_ sender: Any) {
        videopicker.sourceType = .photoLibrary
        videopicker.allowsEditing = true
        present(videopicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            myVideo.image = image
        }
        dismiss(animated: true, completion: nil)
    }
    
}


