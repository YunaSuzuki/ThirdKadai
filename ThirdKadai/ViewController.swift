//
//  ViewController.swift
//  ThirdKadai
//
//  Created by 鈴木裕奈 on 2019/09/23.
//  Copyright © 2019 Yuna Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
     let images: [UIImage] = [UIImage(named:"image1.png")!, UIImage(named:"image2.png")!, UIImage(named:"image3.png")!]
    var imageindex = 0
    var timer :Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = images[imageindex]
    }
    
    //戻るボタンを押した時
    @IBAction func back(_ sender: Any) {
        if imageindex == 0 {
            imageindex = 2
        } else {
            imageindex -= 1
        }
        imageView.image = images[imageindex]
    }
    
    //進むボタンを押した時
    @IBAction func next(_ sender: Any) {
        if imageindex == 2 {
            imageindex = 0
        } else {
            imageindex += 1
        }
        imageView.image = images[imageindex]
    }
    
    //再生・一時停止を押した時
    @IBAction func startStop(_ sender: Any) {
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
    }
    
    
    @objc func onTimer(_ timer: Timer){
        if imageindex == 2 {
        imageindex = 0
        } else {
        imageindex += 1
        }
        imageView.image = images[imageindex]
    }

}

