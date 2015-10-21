//
//  ViewController.swift
//  Twitter Login
//
//  Created by PJ Vea on 5/26/15.
//  Copyright (c) 2015 Vea Software. All rights reserved.
//

import UIKit
import TwitterKit


class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let logInButton = TWTRLogInButton(logInCompletion: {
            (session: TWTRSession!, error: NSError!) in
            
            print(session.userName)
            
        })
        
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

