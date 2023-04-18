//
//  ViewController.swift
//  Twitter
//
//  Created by Sneh kalariya on 14/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var line1Label: UILabel!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var line2Label: UILabel!
    @IBOutlet weak var createAccount: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = "See what's \nhappening in the \nworld right now."
    }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        let navigation = storyboard?.instantiateViewController(identifier: "LoginPage") as! LoginPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    @IBAction func createAccountAction(_ sender: UIButton) {
        let navigation = storyboard?.instantiateViewController(identifier: "CreateAccountPage") as! CreateAccountPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
}
