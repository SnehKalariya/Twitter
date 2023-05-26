//
//  homePageCollectionViewCellImage.swift
//  Twitter
//
//  Created by Sneh kalariya on 25/05/23.
//

import UIKit

class homePageCollectionViewCellImage: UIViewController {
    
    var null = ""

    @IBOutlet weak var webView : UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.loadRequest(URLRequest(url: URL(string: null)!))
    }
    

}
