//
//  ViewController.swift
//  Hello World Swift
//
//  Created by Shreyas Kalyan on 9/10/14.
//  Copyright (c) 2014 KingKal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var helloLabel : UILabel!
    @IBOutlet var helloTextField : UITextField!
    @IBOutlet var helloButton : UIButton!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func setUpUI() {
        helloLabel.text = "Hello World!";
        helloLabel.textColor = UIColor.redColor();
        helloLabel.textAlignment = NSTextAlignment.Center;
        
        helloTextField.text = "Enter name here";
        helloButton.setTitle("Say Hello" , forState: .Normal)
        
        
        
    }
    
    @IBAction func sayHelloAction(sender : UIButton){
        var name = helloTextField.text;
        if (name.isEmpty){
            var alert = UIAlertController(title:"Error", message:"Please enter a name!", preferredStyle: UIAlertControllerStyle.Alert);
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil));
            self.presentViewController(alert, animated:true, completion:nil)
        } else {
            helloLabel.text = "Hello \(name)!"
        }
    }

}

