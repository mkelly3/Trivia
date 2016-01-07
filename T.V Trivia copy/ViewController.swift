//
//  ViewController.swift
//  T.V Trivia
//
//  Created by mkelly2 on 12/8/15.
//  Copyright © 2015 mkelly2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(patternImage: UIImage(named: "originalsix")!)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! FirstViewController
     
    }
}