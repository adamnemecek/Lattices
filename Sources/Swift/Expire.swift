//
//  Expire.swift
//  SwiftCrystal
//
//  Created by Jun Narumi on 2016/05/27.
//  Copyright © 2016年 zenithgear. All rights reserved.
//

import Foundation



class Expire : NSObject {
    class func did() -> Bool {
        let dateFormatter = DateFormatter()
        let date = dateFormatter.date(from: "2016/08/27 00:00:00")!
        debugPrint(date)
        return (date as NSDate).earlierDate(Date()) == date
    }
}

