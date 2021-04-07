//  ViewController.swift
//  Stagging
//  Created by Mashhood Qadeer on 07/04/2021.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.ReadProperty()
    }

    func ReadProperty(){
        var config: [String: Any]?
        if let infoPlistPath = Bundle.main.url(forResource: "Info", withExtension: "plist") {
            do {
                let infoPlistData = try Data(contentsOf: infoPlistPath)
                
                if let dict = try PropertyListSerialization.propertyList(from: infoPlistData, options: [], format: nil) as? [String: Any] {
                    config = dict
                    dump("API End Points" + ( dict ["API_END_POINT"] as? String ?? "") );
                }
                
            }catch {
                print(error)
            }
        }
    }
    
}

