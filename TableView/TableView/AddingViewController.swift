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
    @IBOutlet weak var btnStatus: UIButton!
    
    var img:UIImage? = nil
    var status:String? = nil
    var delegate:AddingProtocol!
    
    var videopicker = UIImagePickerController()
    
    @IBOutlet weak var myViewAdding: UIView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        videopicker.delegate = self
    }
    
    @IBAction func addingvideo(_ sender: Any) {
        
        let videoModel = VideoModel(namevideo: myTitleVideo.text!, namechanel: myNameChanel.text!,detailvideo : myVideo.image!,status : img!,detailstatus: status!)
        delegate.insertvideo(model: videoModel)
         self.navigationController?.popViewController(animated: true)
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
    
    @IBAction func activityStatus(_ sender: Any) {
        let btn = sender as! UIButton
        btn.isSelected = !btn.isSelected
        if btn.isSelected {
            img = UIImage(named: "checked")
            status = "Đã đăng ký"
        }
        else
        {
            img = UIImage(named: "check")
            status = "Chưa đăng ký"
        }
    }
    
}


