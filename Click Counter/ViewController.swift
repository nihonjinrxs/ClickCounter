//
//  ViewController.swift
//  Click Counter
//
//  Created by Ryan Harvey on 6/15/15.
//  Copyright © 2015 datascientist.guru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var label:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        // Label2
        let label2 = UILabel()
        label2.frame = CGRectMake(250, 150, 60, 60)
        label2.text = "0"
        self.view.addSubview(label2)
        self.label2 = label2
        
        // Increment Button
        let upButton = UIButton()
        upButton.frame = CGRectMake(150, 250, 60, 60)
        upButton.setTitle("Up", forState: .Normal)
        upButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(upButton)
        upButton.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)

        // Decrement Button
        let downButton = UIButton()
        downButton.frame = CGRectMake(250, 250, 60, 60)
        downButton.setTitle("Down", forState: .Normal)
        downButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(downButton)
        downButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Color Change Button
        let colorButton = UIButton()
        colorButton.frame = CGRectMake(200, 350, 180, 60)
        colorButton.setTitle("Change Color", forState: .Normal)
        colorButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(colorButton)
        colorButton.addTarget(self, action: "changeBackground", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func getRandomColor() -> UIColor {
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    func changeBackground() {
        self.view.backgroundColor = getRandomColor()
    }
}

