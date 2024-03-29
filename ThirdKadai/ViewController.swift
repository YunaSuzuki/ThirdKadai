//
//  ViewController.swift
//  ThirdKadai
//
//  Created by 鈴木裕奈 on 2019/09/23.
//  Copyright © 2019 Yuna Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
    }
    @IBOutlet weak var imageView: UIImageView!
     let images: [UIImage] = [UIImage(named:"image1.png")!, UIImage(named:"image2.png")!, UIImage(named:"image3.png")!]
    var imageindex = 0
    var timer :Timer!
    @IBOutlet weak var back_outlet: UIButton!
    @IBOutlet weak var next_outlet: UIButton!
    @IBOutlet weak var startStop_outlet: UIButton!
    
    
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
        if self.timer == nil{
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
            back_outlet.isEnabled = false
            next_outlet.isEnabled = false
            startStop_outlet.setTitle("停止", for: .normal)
        } else{
            self.timer.invalidate()
            self.timer = nil
            back_outlet.isEnabled = true
            next_outlet.isEnabled = true
            startStop_outlet.setTitle("再生", for: .normal)
        }
    }
    
    //スライドショー内での画像の切り替え
    @objc func onTimer(_ timer: Timer){
        if imageindex == 2 {
        imageindex = 0
        } else {
        imageindex += 1
        }
        imageView.image = images[imageindex]
    }
    
    //画面遷移
    override func prepare(for segue: UIStoryboardSegue, sender: Any!){
        
        if (segue.identifier == "resultViewController"){
            
            let resultViewController: ResultViewController = (segue.destination as? ResultViewController)!
            
            resultViewController.selectedImage = imageView.image
            
            
        }
        
    }
    
    //画像たタップした時
    
    @IBAction func tapImage(_ sender: Any) {
        self.performSegue(withIdentifier: "resultViewController", sender: nil)
        if timer != nil{
            self.timer.invalidate()
            self.timer = nil
            back_outlet.isEnabled = true
            next_outlet.isEnabled = true
            startStop_outlet.setTitle("再生", for: .normal)
        }
    }
    
    
}

