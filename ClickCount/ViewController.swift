//
//  ViewController.swift
//  ClickCount
//
//  Created by SwagSoft Vn on 12/28/15.
//  Copyright © 2015 SwagSoft Vn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Count = 0
    var label:UILabel!
    @IBOutlet weak var red: UISlider!
    @IBOutlet weak var green: UISlider!
    @IBOutlet weak var blue: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        //Button
        
        var button = UIButton()
        
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.addTarget(self, action: "increaseCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(button	)
        
        var buttonclear = UIButton()
        
        buttonclear.frame = CGRectMake(150, 300, 60, 60)
        buttonclear.setTitle("Clear", forState: .Normal)
        buttonclear.setTitleColor(UIColor.redColor(), forState: .Normal)
        buttonclear.addTarget(self, action: "clearCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(buttonclear)
        
        
        // Make sure the program doesn't crash if the controls aren't connected
       

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func increaseCount(){
        ++self.Count
        self.label.text = "\(self.Count)"
    }
    
    func clearCount(){
        self.Count = 0
        self.label.text = "0"
    }
    
    @IBAction func changeBackGround(sender: UISlider) {
        if self.red == nil {
            return
        }
        
        let r: CGFloat = CGFloat(self.red.value)
        let g: CGFloat = CGFloat(self.green.value)
        let b: CGFloat = CGFloat(self.blue.value)
        print("slider value::\(r)")
        self.view.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    

}

