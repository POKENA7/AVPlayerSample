//
//  ViewController.swift
//  AVPlayerSample
//
//  Created by 中原涼太 on 2020/04/19.
//  Copyright © 2020 中原涼太. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBAction func sliderValueChanged(_ sender: UISlider) {
    }
    @IBOutlet weak var slider: UISlider!
    @IBAction func playButtonTapped(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let URLString = "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"
        let VIDEO_URL = URL(string: URLString)
        let moviePlayer = MoviePlayer(VIDEO_URL!, preview: self.view)
        moviePlayer.play()
    }
}

