//
//  FirstViewController.swift
//  day7TabView&PlistExample
//
//  Created by Nayna on 7/8/19.
//  Copyright © 2019 Nayna. All rights reserved.
//

import UIKit

class FirstViewController:UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tbl_colors: UITableView!
    
    var colorsArray = [String]()
    
    
    override   func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tbl_colors.delegate = self
        self.tbl_colors.dataSource = self
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
    
 
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return colorsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = 
    }
}
