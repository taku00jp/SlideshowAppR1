//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 斉藤 on 2016/03/21.
//  Copyright © 2016年 taku.saito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let img1 = UIImage(named:"img1.jpg");
        let img2 = UIImage(named:"img2.jpg");
        let img3 = UIImage(named:"img3.jpg");
        
  
        let imageView1 = UIImageView(image:img1)
        let imageView2 = UIImageView(image:img2)
        let imageView3 = UIImageView(image:img3)
        
        let scrView = UIScrollView()
        

        scrView.frame = CGRectMake(100, 100, 240, 240)
        
        scrView.contentSize = CGSizeMake(240*3, 240)
        
  
        imageView1.frame = CGRectMake(0, 0, 240, 240)
        imageView2.frame = CGRectMake(240, 0, 240, 240)
        imageView3.frame = CGRectMake(480, 0, 240, 240)
   
        self.view.addSubview(scrView)
        scrView.addSubview(imageView1)
        scrView.addSubview(imageView2)
        scrView.addSubview(imageView3)
        
    
        scrView.pagingEnabled = true
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}