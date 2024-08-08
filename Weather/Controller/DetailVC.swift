//
//  DetailVC.swift
//  Weather
//
//  Created by Jaimin Raval on 01/08/24.
//

import UIKit

class DetailVC: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        debugPrint("\n-----viewWillAppear called")
        print("")

    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        apicall()
        debugPrint("\n-----viewDidLoad called")
        print("")


    }
    
    
    override func viewIsAppearing(_ animated: Bool) {
        debugPrint("\n-----viewIsAppearing called")
        view.backgroundColor = .red

        print("")


    }
    
    override func viewDidAppear(_ animated: Bool) {
        debugPrint("\n-----viewDidAppear called")
        print("")


    }

    
    override func viewDidDisappear(_ animated: Bool) {
        debugPrint("\n-----viewDidDisappear called")
        print("")


    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        debugPrint("-----viewWillDisappear called")
        print("")

    }
    
    
    func apicall() {
        
        let url = "https://dummyjson.com/test"
        
        if let apiurl = URL(string: url) {
            
            let session = URLSession.shared
            
//            let dataTask = session.dataTask(with: URL(string: url)!) { data, response, error in
//                
//            }
            
            let dataTask = session.dataTask(with: apiurl) { data, response, error in
                
//                if let error = error {
//                    debugPrint("Something went wrong:\(error)")
//                    return
//                }
//                
//                guard let responseData = data else { 
//                    debugPrint("No Data received!")
//                    return
//                }
                
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!) as? [String: Int] {
//                        print("response: \(response!)")
                        debugPrint("\n------JSON:\(json)")
                        
                    } else {
                        debugPrint("-----error in json serialization")
                    }
                } catch {
                    debugPrint("error in parsing Data!:\(error)")

                }
            }
            dataTask.resume()
        } else {
            debugPrint("Invalid URL")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
