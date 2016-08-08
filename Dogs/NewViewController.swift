//
//  NewViewController.swift
//  Dogs
//
//  Created by Andy Feng on 8/8/16.
//  Copyright © 2016 Andy Feng. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = self.image
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
