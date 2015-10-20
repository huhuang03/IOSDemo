//
//  SecondViewController.swift
//  PassingDataBetweenViewController
//
//  Created by Tonghu_Yi on 10/20/15.
//  Copyright © 2015 Tonghu_Yi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var valueForFirst = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = valueForFirst
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let firstContrller:ViewController = segue.destinationViewController as! ViewController
        firstContrller.valueForSecond = "hello for second"
    }
    
}
