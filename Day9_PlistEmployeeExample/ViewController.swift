//
//  ViewController.swift
//  Day9_PlistEmployeeExample
//
//  Created by moxDroid on 2019-03-12.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.readInformationPlist()
    }
    
    func readInformationPlist() {
        if let bundlePath = Bundle.main.path(forResource: "Employee", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            
            print(dictionary!.description)
            print("------------countrylist from plist files--------")
            
            let countryList = dictionary!["countrys"] as! NSArray
            print((countryList[0]))
            for c in countryList
            {
                print(c)
            }
            
            print("-----------employeelist from plist file--------")
            let employeeList=dictionary!["employees"] as! NSArray
            
            for e in employeeList
            {
                let emp =  e as! NSDictionary
                print("employee ID: \(emp["eid"]!)")
                print("employee name :\(emp["enm"]!)")
                print("employee salary: \(emp["salary"]!)")
                print("--------------------")
                
            }
            
            
            
        }
    }


}

