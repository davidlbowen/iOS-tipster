//
//  SettingsViewController.swift
//  tipster
//
//  Created by David Bowen on 1/31/15.
//  Copyright (c) 2015 David Bowen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultPercentageControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let currentIndex = getDefaultPercentageIndex()
        defaultPercentageControl.selectedSegmentIndex = currentIndex
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onTouchUpInside(sender: AnyObject) {
        let currentIndex = defaultPercentageControl.selectedSegmentIndex
        setDefaultPercentageIndex(currentIndex)
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func getDefaultPercentageIndex() -> Int {
        let defaults = NSUserDefaults.standardUserDefaults()
        return defaults.integerForKey("defaultPercentageIndex")
    }
    
    func setDefaultPercentageIndex(newValue: Int) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(newValue, forKey:"defaultPercentageIndex")
        defaults.synchronize()
    }
}
