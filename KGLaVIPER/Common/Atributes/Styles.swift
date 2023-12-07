//
//  Styles.swift
//  KGHistoryVIPER
//
//  Created by Macbook on 7/12/23.
//

import UIKit

public enum Styles {
    
    enum TabbarItem {
        static let history = UIImage(systemName: "book")
        static let events = UIImage(systemName: "calendar.circle")
        static let personalities = UIImage(systemName: "person")
        static let settings = UIImage(systemName: "gearshape")
    }
    
    enum TabbarSelectedItem {
        static let history = UIImage(systemName: "book.fill")
        static let events = UIImage(systemName: "calendar.circle.fill")
        static let personalities = UIImage(systemName: "person.fill")
        static let settings = UIImage(systemName: "gearshape.fill")
    }
}
