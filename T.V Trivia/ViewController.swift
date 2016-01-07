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
     
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! FirstViewController
        dvc.title = "Original Six Trivia"
     
    }
}