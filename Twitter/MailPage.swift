//
//  MailPage.swift
//  Twitter
//
//  Created by Sneh kalariya on 08/05/23.
//

import UIKit

class MailPage: UIViewController {

    @IBOutlet weak var profailImageOutlet: UIImageView!
    @IBOutlet weak var writeAMeassge: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profailImageOutlet.layer.masksToBounds = true
        profailImageOutlet.layer.cornerRadius = profailImageOutlet.frame.height / 2
        writeAMeassge.layer.cornerRadius = 20
        
        
    }
   }
