//
//  ViewController3.swift
//  Demo1
//
//  Created by Setefano Taukafa on 8/8/20.
//

import AVKit
import AVFoundation
import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url:URL(fileURLWithPath: Bundle.main.path(forResource:"video-1596820940", ofType: "mp4")!))
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        layer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer)
        player.volume = 70
        player.play()
        
    }
    

}
 
