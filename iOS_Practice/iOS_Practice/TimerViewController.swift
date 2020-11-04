//
//  TimerViewController.swift
//  iOS_Practice
//
//  Created by YutaroMatsunaga on 2020/11/01.
//  Copyright © 2020 YutaroMatsunaga. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    // タイマー型の変数
    var timer: Timer?
    // カウント用の変数
    var count = 0
    // 設定値を扱うキーを設定
    let settingKey = "timer_value"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UserDefaultsのインスタンス生成
        let settings = UserDefaults.standard
        // UserDefaultsに初期値を設定
        settings.register(defaults: [settingKey:10])
    }
    
    /// 画面切り替え時の処理（時間設定決定後の処理）
    override func viewDidAppear(_ animated: Bool) {
        // カウント（経過時間）をゼロにする
        count = 0
        // タイマーの表示を更新する
        _ = displayUpdate()
    }

    @IBOutlet weak var countDownLabel: UILabel!
    @IBAction func settingButtonAction(_ sender: Any) {
        // タイマーが実行中だったら停止し、画面遷移する
        if let nowTimer = timer {
            if nowTimer.isValid == true {
                nowTimer.invalidate()
            }
        }
        
        performSegue(withIdentifier: "goSetting", sender: nil)
    }
    
    @IBAction func startButtonAction(_ sender: Any) {
        // Timerをアンラップする
        if let nowTimer = timer {
            if nowTimer.isValid == true {
                return
            }
        }
        
        // タイマースタート
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(self.timerInterrupt(_:)),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @IBAction func stopButtonAction(_ sender: Any) {
        if let nowTimer = timer {
            // タイマーが実行中だったら停止
            if nowTimer.isValid == true {
                nowTimer.invalidate()
            }
        }
    }
    
    func displayUpdate() -> Int{
        // 設定されている値を取得する
        let settings = UserDefaults.standard
        let timerValue = settings.integer(forKey: settingKey)
        
        // 残り時間を算出
        let remainCount = timerValue - count
        
        // 残り時間をラベルに表示
        countDownLabel.text = "残り \(remainCount) 秒"
        
        return remainCount
    }
    
    @objc func timerInterrupt(_ timer: Timer) {
        // 経過時間をインクリメント
        count += 1
        
        // 残り時間が0以下なら、タイマー停止
        if displayUpdate() <= 0 {
            count = 0
            timer.invalidate()
        }
    }
}
