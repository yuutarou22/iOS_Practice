//
//  JankenViewController.swift
//  iOS_Practice
//
//  Created by YutaroMatsunaga on 2020/10/25.
//  Copyright © 2020 YutaroMatsunaga. All rights reserved.
//

import UIKit

class JankenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    // ジャンケン（数字）
    var answerNum = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        // ジャンケン結果保持用
        var newAnswerNum = 0
        
        // 前回と結果が異なる場合のみ乱数を使用する
        repeat {
            // 0-3の乱数を生成
            newAnswerNum = Int.random(in: 0..<3)
        } while answerNum == newAnswerNum
        
        answerNum = newAnswerNum

        if answerNum == 0 {
            // グー
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named:"gu")
        } else if answerNum == 1 {
            // チョキ
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named:"choki")
        } else {
            // パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named:"pa")
        }
    }
}
