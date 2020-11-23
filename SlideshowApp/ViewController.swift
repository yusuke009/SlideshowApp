//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 齋藤友祐 on 2020/11/17.
//  Copyright © 2020 yusuke.saito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startBottom: UIButton!
    @IBOutlet weak var nextBottom: UIButton!
    @IBOutlet weak var backBottom: UIButton!
    
    
    
    var index:Int = 0
    
    var timer: Timer!
    
    var imageSlide:[UIImage] = [UIImage(named: "image1.jpg")!,UIImage(named:"image2.jpg")!, UIImage(named:"image3.jpg")!]
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        imageView.image = imageSlide[index]
        
    }
    
    
    @IBAction func nextBottom(_ sender: Any) {
        index += 1
        if (index == imageSlide.count) {
            index = 0
        }
        imageView.image = imageSlide[index]

    }
    

    

    @IBAction func slideBottom(_ sender: Any) {
        nextBottom.isEnabled = false
        backBottom.isEnabled = false
        

        
        if (timer == nil) {
            timer = Timer.scheduledTimer(timeInterval:2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
            startBottom.setTitle("停止", for: .normal)
            
            
        } else {
            timer.invalidate()
            
            timer = nil
            
            startBottom.setTitle("再生", for: .normal)
            nextBottom.isEnabled = true
            backBottom.isEnabled = true
        
            
        }
    }
    
    @objc func changeImage() {
        index += 1
        
        if (index == imageSlide.count) {
            index = 0
        }
        imageView.image = imageSlide[index]
        
    }
    
    @IBAction func backBottom(_ sender: Any) {
        index -= 1
        if(index < 0) {
            index = 2
        }
        
        imageView.image = imageSlide[index]
        
    }
    

    
    @IBAction func unwind (_ segue: UIStoryboardSegue) {
     
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let resulutViewController:ResultViewController = segue.destination as! ResultViewController
        
        resulutViewController.imageSlide1 = imageView.image
        
    if timer != nil {
            timer.invalidate()
            timer = nil
            
            startBottom.setTitle("再生", for: .normal)
                     nextBottom.isEnabled = true
                     backBottom.isEnabled = true
                 
            
        }
        

        
    }

}

