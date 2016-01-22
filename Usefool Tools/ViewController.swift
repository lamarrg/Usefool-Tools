//
//  ViewController.swift
//  Usefool Tools
//
//  Created by Lamar Greene on 1/21/16.
//  Copyright © 2016 Lamar Greene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    
    @IBAction func startActivityIndicator(sender: AnyObject) {
        
        activityIndicator = UIActivityIndicatorView(frame: CGRectMake(0,0,50,50))
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        textLabel.text = "This is used for indicating activity, normally network. Something may be going on that you can't see."
    }
    
    
    @IBAction func stopActivityIndicator(sender: AnyObject) {
        
        activityIndicator.stopAnimating()
        textLabel.text = ""
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

