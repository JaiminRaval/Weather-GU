//
//  ViewController.swift
//  Weather
//
//  Created by Jaimin Raval on 31/07/24.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var fetchBtn: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func fetchBtnPressed(_ sender: Any) {
//        debugPrint("fetch button tapped!")
        performSegue(withIdentifier: K.detailScreenSegue, sender: self)
    }
    
}

