//
//  ViewController.swift
//  App
//
//  Created by Nguyen Hoang Huy on 5/13/19.
//  Copyright © 2019 Nguyen Hoang Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet weak var ibConstraintScrollViewWidth: NSLayoutConstraint!
    
    @IBOutlet weak var myScroll: UIScrollView!
    @IBOutlet weak var IDTextfield: UITextField!
    @IBOutlet weak var PassTextfield: UITextField!
    
    var activeField: UITextField?
    var lastOffset: CGPoint!
    var keyboardHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        self.view.isUserInteractionEnabled = true
        self.HideKeyboard()
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        activeField = textField
        lastOffset = self.myScroll.contentOffset
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        myScroll.setContentOffset(CGPoint(x: 0, y: textField.frame.origin.y), animated: true)
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        myScroll.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
         ibConstraintScrollViewWidth.constant = UIScreen.main.bounds.size.width
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    func HideKeyboard(){
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(TapAnyWhere))
        Tap.cancelsTouchesInView = false
        view.addGestureRecognizer(Tap)
    }
    @objc func TapAnyWhere(){
        view.endEditing(true)
    }
    
}



