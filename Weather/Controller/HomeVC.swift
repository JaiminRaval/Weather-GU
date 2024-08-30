//
//  ViewController.swift
//  Weather
//
//  Created by Jaimin Raval on 31/07/24.
//

import UIKit

class HomeVC: UIViewController {


    
    @IBOutlet weak var fetchBtn: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    

    @IBAction func fetchPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "NavigateToDetail", sender: self)
    }
    
    
    
    
    
    
    
    
    
//    @IBAction func fetchBtnPressed(_ sender: Any) {
////        debugPrint("fetch button tapped!")
//        performSegue(withIdentifier: K.detailScreenSegue, sender: self)
//    }
//    
}

