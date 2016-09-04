//
//  CalendarEvent.swift
//  MyCalendar
//
//  Created by Bryce Sulin on 9/4/16.
//  Copyright © 2016 Bryce Sulin. All rights reserved.
//

import Foundation

class CalendarEvent : NSObject {
    var title : String
    var dateString : String
    
    init(withTitle t : String, andDateString ds : String) {
        title = t
        dateString = ds
    }
    
    init(withCoder coder : NSCoder) {
        dateString = coder.decodeObjectForKey("dateString") as! String
        title = coder.decodeObjectForKey("title") as! String
    }
    
    func encodeWithCoder(coder : NSCoder) {
        coder.encodeObject(dateString, forKey: "dateString")
        coder.encodeObject(title, forKey: "title")
    }
}
