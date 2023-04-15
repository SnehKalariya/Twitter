//
//  LoginPage.swift
//  Twitter
//
//  Created by Sneh kalariya on 14/04/23.
//

import UIKit

class LoginPage: UIViewController {

    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label2.text = "To get started,first \nenter your phone,email, \nor @username"
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        
    }
    @IBAction func forgotPasswordButtonAction(_ sender: UIButton) {
        let navigation = storyboard?.instantiateViewController(identifier: "ForgotPassword") as! ForgotPassword
        navigationController?.pushViewController(navigation, animated: true)
        }
    }
