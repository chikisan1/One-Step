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
    
    
    static var tableViewData = [Card]()
    
    var location = CGPoint(x: 0, y: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ViewController.tableViewData.append(Card(title: "3", date: Date(), priority: 3))
        ViewController.tableViewData.append(Card(title: "1", date: Date(), priority: 1))
        ViewController.tableViewData.append(Card(title: "2", date: Date(), priority: 2))
        ViewController.tableViewData.sort(by: { $0.priority < $1.priority })
        // Do any additional setup after loading the view, typically from a nib.
        toDoCard.text = ViewController.tableViewData.first?.title
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
    
    @IBAction func addNewCard(_ sender: Any) {
        let alert = UIAlertController(title: "Add New Card", message: nil, preferredStyle: .alert)
        var newCard: String?
        alert.addTextField{
            (textfield) in textfield.placeholder = "Enter New Chore"
            newCard = textfield.text
            ViewController.tableViewData.append(Card(title: newCard!, date: Date(), priority: ViewController.tableViewData.count + 1))
            ViewController.tableViewData.sort(by: { $0.priority < $1.priority })
            print(ViewController.tableViewData)
        }
        let okAction = UIAlertAction(title: "OK", style: .default){
            (action) in print(ViewController.tableViewData)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            (action) in print("cancel")
        }
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true)
        
        
    }
    
//    func titleTextField(textField: UITextField!){
//        newCardTitle = textField
//        newCardTitle?.placeholder = "Enter New Chore"
//    }
    
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

