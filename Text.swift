//
//  Text.swift
//  All
//
//  Created by JuHo on 05/10/14.
//  Copyright (c) 2014 JuHo. All rights reserved.
//

import UIKit

class Text: ConsoleScreen {

    override func viewDidLoad() {
        super.viewDidLoad()
        let reverStr = self.run("Hello World!")
        self.writeln("\(reverStr.reverseString)")
        self.writeln("\(reverStr.checkString)")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func run(string: String) -> (reverseString:String, checkString: String) {
        var rever1: String = reverse(string)
        var check: String = "" 
        var rever2: String = reverse(rever1)
        if (checkText(string, text2: rever2)) {
            check = "Giống bản gốc." 
        } else {
            check = "Khác bản gốc."
        }
        return (rever1, check)
    }
    func reverse(string: String) -> String {
        var arrayString: [Character] = [Character]()
        var reverString: String = ""
        for char in string {
            arrayString.append(char)
        }
        for var i=arrayString.count-1; i>=0; i-- {
            reverString += String(arrayString[i])
        }
        return reverString
    }
    
    func checkText(text1: String, text2: String) -> Bool {
        if text1 != text2 {
            return false
        }
        return true
    }
}

