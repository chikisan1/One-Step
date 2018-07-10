//
//  ViewController.swift
//  One Step
//
//  Created by Chikao Maeda on 6/25/18.
//  Copyright © 2018 Chikao Maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toDoCard: UITextView!
    
    var location = CGPoint(x: 0, y: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        toDoCard.isUserInteractionEnabled = true
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
         toDoCard.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
         toDoCard.addGestureRecognizer(swipeLeft)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.up
         toDoCard.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.down
         toDoCard.addGestureRecognizer(swipeDown)
        
    }

//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let touch: UITouch! = touches.first
//        location = touch.location(in: self.view)
//        toDoCard.center = location
//        print("1")
//    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch! = touches.first
        location = touch.location(in: self.view)
        toDoCard.center = location
        print("2")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func swipeGesture(sender: UISwipeGestureRecognizer){
        if let swipeGesture = sender as? UISwipeGestureRecognizer{
            switch swipeGesture.direction{
            case UISwipeGestureRecognizerDirection.right:
                print("Right")
                 toDoCard.text = "Right"
            case UISwipeGestureRecognizerDirection.left:
                print("Left")
                 toDoCard.text = "Left"
            case UISwipeGestureRecognizerDirection.up:
                print("Up")
                 toDoCard.text = "Up"
            case UISwipeGestureRecognizerDirection.down:
                print("Down")
                toDoCard.text = "Down"
            default:
                break
            }
        }
    }


}

