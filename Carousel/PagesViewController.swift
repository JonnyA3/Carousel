//
//  PagesViewController.swift
//  Carousel
//
//  Created by Abowd, Jonathan on 9/30/16.
//  Copyright © 2016 Abowd, Jonathan. All rights reserved.
//

import UIKit

class PagesViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageScrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pageScrollView.contentSize = CGSize(width: 1500, height: 667)
        
        pageScrollView.delegate = self
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // This method is called as the user scrolls
        
        print(scrollView.contentOffset)
        
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        // This method is called right as the user lifts their finger
    
   
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
        

        
        // Get the current page based on the scroll offset
        let page : Int = Int(round(pageScrollView.contentOffset.x / 375))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        

        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
