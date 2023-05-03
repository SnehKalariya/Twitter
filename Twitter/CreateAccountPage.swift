//
//  CreateAccountPage.swift
//  Twitter
//
//  Created by Sneh kalariya on 15/04/23.
//

import UIKit

class CreateAccountPage: UIViewController {

    @IBOutlet weak var label4: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label4.text = "Create your account"
    }
    @IBAction func NextButtonAction(_ sender: UIButton) {
        let navigation = storyboard?.instantiateViewController(identifier: "InformationPage") as! InformationPage
        navigationController?.pushViewController(navigation, animated: true)
    }
}
