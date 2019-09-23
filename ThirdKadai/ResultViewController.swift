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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.        
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
