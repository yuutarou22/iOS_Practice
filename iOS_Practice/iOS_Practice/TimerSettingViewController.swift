//
//  TimerSettingViewController.swift
//  iOS_Practice
//
//  Created by YutaroMatsunaga on 2020/11/01.
//  Copyright © 2020 YutaroMatsunaga. All rights reserved.
//

import UIKit

class TimerSettingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    // UIPickerViewに表示するデータを配列で作成
    let settingArray: [Int] = [10, 20, 30, 40, 50, 60]
    
    // 設定値を覚えるキーを設定
    let settingKey = "timer_value"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // timerSettingPickerのデリゲートとデータソースの通知先を指定
        timerSettingPicker.delegate = self
        timerSettingPicker.dataSource = self
        
        // UserDefaultsの取得
        let settings = UserDefaults.standard
        let timerValue = settings.integer(forKey: settingKey)
        
        // 保存されている秒数で、Pickerの選択を合わせる
        for row in 0..<settingArray.count {
            if settingArray[row] == timerValue {
                timerSettingPicker.selectRow(row, inComponent: 0, animated: true)
            }
        }
    }

    @IBOutlet weak var timerSettingPicker: UIPickerView!
    
    /// 決定ボタン押下後、前画面に戻る
    @IBAction func decisionButtonAction(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    
    /// Data Sourceのメソッド
    /// UIPicker Viewの「列数」を設定
    /// 今回は１列
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    /// Data Sourceのメソッド
    /// UIPicker Viewの「行数」を設定
    /// 今回はsettingArrayの個数分
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return settingArray.count
    }
    
    /// delegateメソッド
    /// PickerViewの内容を表示するdelegateメソッド
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(settingArray[row])
    }
    
    /// delegateメソッド
    /// PickerViewで秒数を選択した時に呼ばれるdelegateメソッド
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let settings = UserDefaults.standard
        settings.setValue(settingArray[row], forKey: settingKey)
        settings.synchronize()
    }
}
