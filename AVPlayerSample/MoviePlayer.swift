//
//  MoviePlayer.swift
//  AVPlayerSample
//
//  Created by 中原涼太 on 2020/04/19.
//  Copyright © 2020 中原涼太. All rights reserved.
//
import UIKit
import Foundation
import AVFoundation

class MoviePlayer {
    private var player:AVPlayer!
    private var preview:UIView!
    lazy var slider = UISlider()
    
    var isPlaying = true;
    var isEnding = false;
    
    init() {

    }
    
    private func setupAudioSession() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .moviePlayback)
        } catch {
            print("Setting category to AVAudioSessionCategoryPlayback failed.")
        }
        do {
            try audioSession.setActive(true)
            print("audio session set active !!")
        } catch {
            
        }
    }
    
    private func setupPlayer() {
        
    }
    
    func play() {
        if isEnding {
            player.seek(to: CMTimeMakeWithSeconds(0, preferredTimescale: Int32(NSEC_PER_SEC)))
            isEnding = false
        }
        player.play()
        isPlaying = true
    }
    
    func pause() {
        player.pause()
        isPlaying = false
    }
    
    @objc func didPlayToEndTime() {
        isPlaying = false
        isEnding = true
        play()
    }
}
