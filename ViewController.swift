//
//  ViewController.swift
//  gestures
//
//  Created by Caden on 9/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.backgroundColor = .red
        myView.center = view.center
        view.addSubview(myView)
        
        let gestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(gestureFired(_:)))
        gestureRecognizer.direction = .right
        gestureRecognizer.numberOfTouchesRequired = 1
        
        
        myView.addGestureRecognizer(gestureRecognizer)
        myView.isUserInteractionEnabled = true
    }
    
    @objc func gestureFired(_ gesture: UITapGestureRecognizer){
        let viewThatFiredGesture = gesture.view
        viewThatFiredGesture?.backgroundColor = .blue
    }
    


}

