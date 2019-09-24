//
//  ResultViewController.swift
//  ThirdKadai
//
//  Created by 鈴木裕奈 on 2019/09/23.
//  Copyright © 2019 Yuna Suzuki. All rights reserved.
//

import UIKit


class ResultViewController: UIViewController {
    
    @IBOutlet weak var tappedImageView: UIImageView!
    var selectedImage: UIImage!
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    var width:CGFloat = 0
    var height:CGFloat = 0
    var scale:CGFloat = 1.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        screenWidth = self.view.bounds.width
        screenHeight = self.view.bounds.height
        width = selectedImage.size.width
        height = selectedImage.size.height
        scale = screenWidth / width
        tappedImageView.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
        let rect:CGRect = CGRect(x:0, y:0, width:width*scale, height:height*scale)
        
        tappedImageView.frame = rect
        tappedImageView.image = selectedImage
        
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
