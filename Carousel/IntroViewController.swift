//
//  IntroViewController.swift
//  Carousel
//
//  Created by Abowd, Jonathan on 9/28/16.
//  Copyright © 2016 Abowd, Jonathan. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var oneViewController: UIImageView!
    @IBOutlet weak var twoViewController: UIImageView!
    @IBOutlet weak var threeViewController: UIImageView!
    @IBOutlet weak var fourViewController: UIImageView!
    @IBOutlet weak var fiveViewController: UIImageView!
    @IBOutlet weak var sixViewController: UIImageView!
    
    
    // Arrays of initial transform values for tiles
    var yOffsets : [Float] = [-430, -400, -390, -458, -530, -455]
    var xOffsets : [Float] = [-99, 38, 57, -50, 5, -75]
    var scales : [Float] = [1, 1.85, 1.7, 1.8, 1.65, 1.95]
    var rotations : [Float] = [-0.5, -0.16, 0.32, 0.42, 0.2, -0.21]
    var tiles: [UIImageView] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        tiles = [oneViewController, twoViewController, threeViewController, fourViewController, fiveViewController, sixViewController]
        
        scrollView.delegate = self
        
        scrollView.frame.size = view.frame.size
        
        scrollView.contentSize = imageView.frame.size
        
        scrollViewDidScroll(scrollView)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let yScroll = scrollView.contentOffset.y
        
        print("\(yScroll)")
        
        for (index, tile) in tiles.enumerated() {
            var ty = convertValue(inputValue: yScroll, r1Min: -20, r1Max: 665, r2Min: CGFloat(yOffsets[index]), r2Max: 0)
            
            var tx = convertValue(inputValue: yScroll, r1Min: -20, r1Max: 665, r2Min: CGFloat(xOffsets[index]), r2Max: 0)
            
            var scl = convertValue(inputValue: yScroll, r1Min: -20, r1Max: 665, r2Min: CGFloat(scales[index]), r2Max: 1)
            
            var rot = convertValue(inputValue: yScroll, r1Min: -20, r1Max: 665, r2Min: CGFloat(rotations[index]), r2Max: 0)
            
            if yScroll > 665 {
                ty = 0
                tx = 0
                scl = 1
                rot = 0
            }
            
            let trans = CGAffineTransform(translationX: tx, y: ty)
            let transScale = trans.scaledBy(x: scl, y: scl)
            let rotTransScale = transScale.rotated(by: rot)
            
            tile.transform = rotTransScale
            
        }
        
    }
 
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        
//        print("it happened")
//        
//        let yScroll = scrollView.contentOffset.y
//        
//        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 10, initialSpringVelocity: 10, options: .curveEaseOut, animations: {
//            if yScroll > 332 {
//                scrollView.contentOffset.y = 665
//            } else {
//                scrollView.contentOffset.y = -20
//            }
//            
//            }, completion:  { (bool) in }
//        )
//    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
