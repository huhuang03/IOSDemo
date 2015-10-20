//
//  ViewController.swift
//  PassingDataBetweenViewController
//
//  Created by Tonghu_Yi on 10/20/15.
//  Copyright © 2015 Tonghu_Yi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    var valueForSecond = "origin value"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(valueForSecond)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        print(valueForSecond)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondController: SecondViewController = segue.destinationViewController as! SecondViewController
        secondController.valueForFirst = textField.text!
    }


}

