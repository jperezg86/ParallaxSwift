//
//  ViewController.swift
//  ScrollViewWithAutoLayout
//
//  Created by Jose Manuel Perez on 3/16/16.
//  Copyright © 2016 Jose Manuel Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var imageCenterYConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scrollView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        imageCenterYConstraint?.constant = min(0, -scrollView.contentOffset.y / 2.0)
    }
    
    


}

