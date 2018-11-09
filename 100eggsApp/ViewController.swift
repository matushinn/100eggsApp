//
//  ViewController.swift
//  100eggsApp
//
//  Created by 大江祥太郎 on 2018/10/27.
//  Copyright © 2018年 shotaro. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var eggView: UIImageView!
    
    var number:Int = 100
    
    var startAudioPlayer: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        numberLabel.text = String(number)
        setupSound()
    }
    func setupSound() {
        // ボタンを押した時の音を設定します。
        if let sound = Bundle.main.path(forResource: "light_saber1", ofType: ".mp3") {
            startAudioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
            startAudioPlayer.prepareToPlay()
        }
    }

    @IBAction func countButton(_ sender: Any) {
        number -= 1

        numberLabel.text = String(number)
        
        if number % 10 == 0 {
            startAudioPlayer.play()
            
        }
       
        if number == 5 {
            Label5.text = "お前暇だな~笑"
        }
        if number == 0{
            numberLabel.text = "バーカ！"
        }
        if number < 0{
            numberLabel.text = ""
        }
        
    }
    
    
    
    
    
}

