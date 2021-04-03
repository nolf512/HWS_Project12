//
//  ViewController.swift
//  HWS_Project12
//
//  Created by J on 2021/04/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UseFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")

        
        defaults.set("Nof", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")
        
        let dict = ["Name": "Nof", "Country": "Japan"]
        defaults.set(dict, forKey: "SavedDictionary")
        
        /*
         integer(forKey:) returns an integer if the key existed, or 0 if not.
         bool(forKey:) returns a boolean if the key existed, or false if not.
         float(forKey:) returns a float if the key existed, or 0.0 if not.
         double(forKey:) returns a double if the key existed, or 0.0 if not.
         object(forKey:) returns Any? so you need to conditionally typecast it to your data type.

         */
        
        let savedInt = defaults.integer(forKey: "Age")
        let savedBool = defaults.bool(forKey: "UseFaceID")
        
        let saveArray = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        let savedDict = defaults.object(forKey: "SavedDictionary") as? [String: String] ?? [String: String]()
        
//        let savedArray2 = defaults.array(forKey: )
        
    }


}


