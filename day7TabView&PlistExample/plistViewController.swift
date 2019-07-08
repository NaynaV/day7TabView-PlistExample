//
//  plistViewController.swift
//  day7TabView&PlistExample
//
//  Created by Nayna on 7/8/19.
//  Copyright © 2019 Nayna. All rights reserved.
//

import UIKit

class plistViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
readStudentInfoPlistFile()
        // Do any additional setup after loading the view.
    }
    

   func readStudentInfoPlistFile()
   {
        if let plist = Bundle.main.path(forResource: "studentInfo", ofType: "plist")
 {
    //reading colors
        if let dict = NSMutableDictionary(contentsOfFile: plist)
    {
    if let colors = dict["colors"] as? [String]
    {
        print(colors)
        for color in colors
        {
            print(color)
        }
        }
        
        //reading Student arrays
        if let students = dict["students"] as? [Any]
        {
            print(students)
            for student in students
            {
                print(student)
            }
        }
    }
    }
}
}
