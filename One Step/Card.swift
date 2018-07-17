//
//  Card.swift
//  One Step
//
//  Created by Chikao Maeda on 7/16/18.
//  Copyright © 2018 Chikao Maeda. All rights reserved.
//

import Foundation

struct Card{
    var title: String
    var date: Date
    var priority: Int
    
    init(title: String, date: Date, priority: Int ){
        self.title = title
        self.date = date
        self.priority = priority
    }
    
    mutating func editTitle(newTitle: String){
        self.title = newTitle
    }
    
    mutating func editPriority(newPriority: Int){
        self.priority = newPriority
    }
    
}


