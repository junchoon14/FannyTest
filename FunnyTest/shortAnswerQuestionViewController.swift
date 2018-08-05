//
//  shortAnswerQuestionViewController.swift
//  TheFiveStarStory
//
//  Created by Jason Hsu on 2018/8/3.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class shortAnswerQuestionViewController: UIViewController {
    
    var num: Int = 0
    var pickQuestions = [answerQuestions]()
    
    @IBOutlet weak var questionShowLabel: UILabel!
    @IBOutlet weak var answerShowLabel: UILabel!
    @IBOutlet weak var operatorButton: UIButton!
    
    @IBAction func operatorButtonClick(_ sender: UIButton) {
        //按鈕功能設定
        if operatorButton.currentTitle == "顯示答案" && num < 9 {
            operatorButton.setTitle("下一題", for: .normal)
            answerShowLabel.text = pickQuestions[num].answer
        } else if operatorButton.currentTitle == "下一題" && num <= 9 {
            operatorButton.setTitle("顯示答案", for: .normal)
            num += 1
            questionShowLabel.text = pickQuestions[num].question
            answerShowLabel.text = ""
        } else if operatorButton.currentTitle == "顯示答案" && num == 9 {
            operatorButton.setTitle("重新開始", for: .normal)
            operatorButton.setTitleColor(UIColor.darkGray, for: .normal)
            answerShowLabel.text = pickQuestions[num].answer
        } else {
            num = 0
            operatorButton.setTitle("顯示答案", for: .normal)
            operatorButton.setTitleColor(UIColor.white, for: .normal)
            //問題重新隨機取十個
            pickQuestions = allAnswerQuestions.shuffled()
            pickQuestions.removeSubrange(10...19)
            
            questionShowLabel.text = pickQuestions[num].question
            answerShowLabel.text = ""
            print(pickQuestions)
            
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //Label內容可以換行
        questionShowLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        questionShowLabel.numberOfLines = 0
        answerShowLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        answerShowLabel.numberOfLines = 0
        //將問題隨意排列並刪除只剩十題
        pickQuestions = allAnswerQuestions.shuffled()
        print(pickQuestions)
        print("-------------------------------------------------------------")
        pickQuestions.removeSubrange(10...pickQuestions.count-1)
        
        operatorButton.setTitle("顯示答案", for: .normal)
        questionShowLabel.text = pickQuestions[num].question
        answerShowLabel.text = ""
        print(pickQuestions)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
