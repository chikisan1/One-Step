//
//  Card.swift
//  One Step
//
//  Created by Chikao Maeda on 7/16/18.
//  Copyright © 2018 Chikao Maeda. All rights reserved.
//

import UIKit

struct Card{
    var title: String
    var date: Date
    var priority: Int
    var color: UIColor
    
    init(title: String, date: Date, priority: Int ){
        self.title = title
        self.date = date
        self.priority = priority
        self.color = getRandomColor()
    }
    
    mutating func editTitle(newTitle: String){
        self.title = newTitle
    }
    
    mutating func editPriority(newPriority: Int){
        self.priority = newPriority
    }
    
}

func getRandomColor() -> UIColor{
    
    let randomRed: CGFloat = CGFloat(drand48())
    
    let randomGreen: CGFloat = CGFloat(drand48())
    
    let randomBlue: CGFloat = CGFloat(drand48())
    
    return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    
}


