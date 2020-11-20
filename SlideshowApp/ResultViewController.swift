//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 齋藤友祐 on 2020/11/17.
//  Copyright © 2020 yusuke.saito. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    

    @IBOutlet weak var upImage: UIImageView!

    var imageSlide1:UIImage!
    

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        upImage.image = imageSlide1
        
    
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
