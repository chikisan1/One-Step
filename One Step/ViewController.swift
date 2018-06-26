//
//  ViewController.swift
//  One Step
//
//  Created by Chikao Maeda on 6/25/18.
//  Copyright © 2018 Chikao Maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgImage.isUserInteractionEnabled = true
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        imgImage.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        imgImage.addGestureRecognizer(swipeLeft)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.up
        imgImage.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.down
        imgImage.addGestureRecognizer(swipeDown)
        
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
                imgImage.image = UIImage(named: "2")
            case UISwipeGestureRecognizerDirection.left:
                print("Left")
                imgImage.image = UIImage(named: "3")
            case UISwipeGestureRecognizerDirection.up:
                print("Up")
                imgImage.image = UIImage(named: "4")
            case UISwipeGestureRecognizerDirection.down:
                print("Down")
                imgImage.image = UIImage(named: "1")
            default:
                break
            }
        }
    }


}

