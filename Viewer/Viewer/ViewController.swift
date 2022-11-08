//
//  ViewController.swift
//  Viewer
//
//  Created by ليزبيث هالا on 27/10/22.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("crcrsh") {
                pictures.append(item)
            }
        }
        print(pictures)
    }


}

