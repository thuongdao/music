//
//  ViewController.swift
//  Work with Focusing-Music
//
//  Created by Dao Van Thuong on 1/8/16.
//  Copyright © 2016 Nadia. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnListClick(sender: AnyObject) {
        
        let controller = storyboard!.instantiateViewControllerWithIdentifier("ListTableView")
        addChildViewController(controller)
        controller.view.frame = CGRectMake(120, 20, 200, self.view.frame.height - 20)
        self.view.addSubview(controller.view)
        controller.didMoveToParentViewController(self)

    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    }

}

