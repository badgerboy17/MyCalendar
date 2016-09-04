//
//  EventViewController.swift
//  MyCalendar
//
//  Created by Bryce Sulin on 9/4/16.
//  Copyright © 2016 Bryce Sulin. All rights reserved.
//

import Foundation
import UIKit

class EventViewController : UIViewController {
    
    var calendarEvent : CalendarEvent?
    
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var dateLabel : UILabel!
    
    override func viewDidLoad() {
        titleLabel.text = calendarEvent?.title
        dateLabel.text = calendarEvent?.dateString
    }
    
}