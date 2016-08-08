//
//  ViewController.swift
//  Dogs
//
//  Created by Andy Feng on 8/8/16.
//  Copyright © 2016 Andy Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let appleProducts = ["iPhone", "Apple Watch", "Mac", "iPad"]
    
    let imageArray = [UIImage(named: "pug"), UIImage(named: "pug2"), UIImage(named: "pug3"), UIImage(named: "pug4")]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return self.appleProducts.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.imageView?.image = self.imageArray[indexPath.row]
        
        cell.titleLabel?.text = self.appleProducts[indexPath.row]
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("showImage", sender: self)
    }
    
    
    
    
    
    
    

    
    
//    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
//    {
//        
//        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
//        
//        cell.imageView?.image = self.imageArray[indexPath.row]
//        
//        cell.titleLabel?.text = self.appleProducts[indexPath.row]
//        
//        return cell
//        
//    }
    
//    
//    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
//        
//        self.performSegueWithIdentifier("showImage", sender: self)
//        
//        
//        
//    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "showImage"
        {
            let indexPaths = self.collectionView!.indexPathsForSelectedItems()!
            let indexPath = indexPaths[0] as NSIndexPath
            let vc = segue.destinationViewController as! NewViewController
            vc.image = self.imageArray[indexPath.row]!
            vc.title = self.appleProducts[indexPath.row]
        }
    }

    
    
    
    
    

}















