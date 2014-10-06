//
//  ArrayInt.swift
//  All
//
//  Created by JuHo on 05/10/14.
//  Copyright (c) 2014 JuHo. All rights reserved.
//

import UIKit

extension Double {
    
    var absolute: Double {
        if self > 0.0 {
            return self
        } else {
            return -self
            }
    }
}

class ArrayInt: ConsoleScreen {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let test = self.arrayInt([1,5,6,2,4,7,8,2,5,7,14,62,17,32])
        self.writeln("Min = \(test.min)")
        self.writeln("Max = \(test.max)")
        self.writeln("Avg = \(test.avg)")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func arrayInt(ar: [Int]) -> (min: Int, max: Int, avg: Int) {
        var tempAvg: Double = 0
        var min = ar[0]
        var max = ar[0]
        var avg = ar[0]
        for i in ar {
            tempAvg += Double(i)
        }
        tempAvg = tempAvg/Double(ar.count)
        
        print("\(tempAvg)")
        
        for val in ar {
            if (val < min) {
                min = val
            } else if (val > max) {
                max = val
            }
            if (testAvg(val, avg: tempAvg, tempAvg: avg)) {
                avg = val
            }
        }
        return (min, max, avg)
        
    }
    
    func testAvg(tempInt: Int, avg: Double, tempAvg: Int) -> Bool {
        let delta1 = Double(tempInt) - avg
        let delta2 = avg - Double(tempAvg)
        if delta1.absolute < delta2.absolute {
            return true
        } else {
            return false
        }
    }
}
