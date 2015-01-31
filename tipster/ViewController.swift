//
//  ViewController.swift
//  tipster
//
//  Created by David Bowen on 1/31/15.
//  Copyright (c) 2015 David Bowen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditChanged(sender: AnyObject) {
        let percentages = [0.15, 0.20, 0.25]
        let percentage = percentages[tipPercentControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text).doubleValue
        let tipAmount = billAmount * percentage
        let totalAmount = billAmount + tipAmount
        
        tipLabel.text = String(format: "$%.2f", tipAmount)
        totalLabel.text = String(format: "$%.2f", totalAmount)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

