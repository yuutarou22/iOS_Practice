//
//  MusicViewController.swift
//  iOS_Practice
//
//  Created by YutaroMatsunaga on 2020/10/26.
//  Copyright © 2020 YutaroMatsunaga. All rights reserved.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // シンバルの音源ファイル指定
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    // シンバル用のプレイヤーインスタンス生成
    var cymbalPlayer: AVAudioPlayer!
    
    @IBAction func cymbal(_ sender: Any) {
        do {
            cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
            cymbalPlayer.play()
        } catch {
            print("シンバルエラー！")
        }
    }
    
    // ギターの音源ファイル指定
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    // ギター用のプレイヤーインスタンス生成
    var guitarPlayer: AVAudioPlayer!
    
    @IBAction func guitar(_ sender: Any) {
        do {
            guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath, fileTypeHint: nil)
            guitarPlayer.play()
        } catch {
            print("ギターエラー！")
        }
    }
    
    // バックミュージックの音源ファイル指定
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    // バックミュージック用のプレイヤーインスタンス生成
    var backmusicPlayer: AVAudioPlayer!
    
    @IBAction func play(_ sender: Any) {
        do {
            backmusicPlayer = try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
            backmusicPlayer.numberOfLoops = -1
            backmusicPlayer.play()
        } catch {
            print("バックミュージックエラー！")
        }
    }
    
    // Stopボタン押下時
    @IBAction func stop(_ sender: Any) {
        if backmusicPlayer.isPlaying {
            backmusicPlayer.stop()
        }
    }
}
