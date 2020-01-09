//
//  ViewController.swift
//  SafeCam
//
//  Created by Jesús Aguas Acin on 02/11/2019.
//  Copyright © 2019 Jesus Aguas Acin. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // Hide keyboard when tapping out
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}


class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.hideKeyboardWhenTappedAround()
    }


}
