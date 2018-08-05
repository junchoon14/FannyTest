//
//  mutipleChoiceQuestionViewController.swift
//  TheFiveStarStory
//
//  Created by Jason Hsu on 2018/8/3.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class mutipleChoiceQuestionViewController: UIViewController {
    
    var yPosition = [449, 499, 549, 599]
    var newPosition = [Int]()
    var num: Int = 0
    var pickChoiceQuestions = [multipleChoiceQuestions]()
    var score: Int = 0
    var timer: Timer?
    var labelTimer: Timer?
    var sec: Int = 5
    
    @IBOutlet weak var questionNumberLabel: UITextField!
    @IBOutlet weak var multipleChoiceQuestionLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var choice4Button: UIButton!
    @IBOutlet weak var retryButton: UIButton!
    @IBOutlet weak var countDownTimerLabel: UILabel!
    
    @IBAction func choiceButtonClick(_ sender: UIButton) {
        if num < 9 {
            //若答案正確，加十分
            if sender.tag == pickChoiceQuestions[num].rightAnswer {
                score += 10
            }
            num += 1
            questionNumberLabel.text = "第 \(num + 1) 題"
            displayContent()
            buttonRandomPosition()
        //程式結束
        } else if num == 9 {
            if self.timer != nil {
                self.timer!.invalidate()
                self.labelTimer!.invalidate()
            }
            multipleChoiceQuestionLabel.text = "你得到\(score)分"
            buttonOff()
            retryButton.isHidden = false
            num = 0
        }
    }
    
    @IBAction func retryButtonClick(_ sender: UIButton) {
        num = 0
        questionNumberLabel.text = "第 \(num + 1) 題"
        randomQuestion()
        buttonOn()
        displayContent()
        retryButton.isHidden = true
        print(pickChoiceQuestions)
        countDownTimer()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomQuestion()
        retryButton.isHidden = true
        questionNumberLabel.text = "第 \(num + 1) 題"
        multipleChoiceQuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        multipleChoiceQuestionLabel.numberOfLines = 0
        displayContent()
        countDownTimer()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        if self.timer != nil {
            self.timer!.invalidate()
            self.labelTimer!.invalidate()
        }
    }
    
    func randomQuestion() {
        pickChoiceQuestions = allMultiChoiceQuestions.shuffled()
        pickChoiceQuestions.removeSubrange(10...pickChoiceQuestions.count-1)
    }
    
    func displayContent() {
        multipleChoiceQuestionLabel.text = pickChoiceQuestions[num].question
        choice1Button.setTitle(pickChoiceQuestions[num].answer1, for: .normal)
        choice2Button.setTitle(pickChoiceQuestions[num].answer2, for: .normal)
        choice3Button.setTitle(pickChoiceQuestions[num].answer3, for: .normal)
        choice4Button.setTitle(pickChoiceQuestions[num].answer4, for: .normal)
    }
    
    func buttonOn() {
        choice1Button.isHidden = false
        choice2Button.isHidden = false
        choice3Button.isHidden = false
        choice4Button.isHidden = false
    }
    
    func buttonOff() {
        choice1Button.isHidden = true
        choice2Button.isHidden = true
        choice3Button.isHidden = true
        choice4Button.isHidden = true
    }
    
    func buttonRandomPosition() {
        displayContent()
        newPosition += yPosition.shuffled()
        choice1Button.frame = CGRect(x: 37, y: newPosition[0], width: 300 , height:30)
        choice2Button.frame = CGRect(x: 37, y: newPosition[1], width: 300, height: 30)
        choice3Button.frame = CGRect(x: 37, y: newPosition[2], width: 300, height: 30)
        choice4Button.frame = CGRect(x: 37, y: newPosition[3], width: 300, height: 30)
    }
    
    func countDownTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { (_) in
            self.nextQustion()
            self.sec = 6
        }
        labelTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            self.sec -= 1
            self.countDownTimerLabel.text = "剩下\(self.sec)秒"
        }
    }
    
    func nextQustion() {
        if num < 9 {
            num += 1
            questionNumberLabel.text = "第 \(num + 1) 題"
            displayContent()
            buttonRandomPosition()
            
        } else if num == 9 {
            if self.timer != nil {
                self.timer!.invalidate()
                self.labelTimer!.invalidate()
            }
            multipleChoiceQuestionLabel.text = "你得到\(score)分"
            buttonOff()
            retryButton.isHidden = false
            num = 0
        }
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
