//
//  questions.swift
//  FannyTest
//
//  Created by Jason Hsu on 2018/8/4.
//  Copyright © 2018 junchoon. All rights reserved.
//

import Foundation

struct multipleChoiceQuestions {
    var question: String
    var answer1: String
    var answer2: String
    var answer3: String
    var answer4: String
    var rightAnswer: Int
}

var allMultiChoiceQuestions = [
    multipleChoiceQuestions(question: "只要有恆心”的下一句是什麼？", answer1: "必定有錢剩", answer2: "鐵柱磨成針", answer3: "天下無敵人", answer4: "點石可成金", rightAnswer: 2),
    multipleChoiceQuestions(question: "《聊齋志異》的作者是誰？", answer1: "曹雪芹", answer2: "蒲松齡", answer3: "施耐庵", answer4: "笑笑生", rightAnswer: 2),
    multipleChoiceQuestions(question: "提出著名的韋達公式的數學家韋達，是哪國人？", answer1: "英國", answer2: "法國", answer3: "德國", answer4: "俄國", rightAnswer: 2),
    multipleChoiceQuestions(question: "我們常稱風韻猶存的中年婦女為“半老徐娘”，這個“徐娘”原是指一位？", answer1: "王妃", answer2: "農家婦女", answer3: "女將軍", answer4: "明代徐文長的母親", rightAnswer: 1),
    multipleChoiceQuestions(question: "法律面前人人平等”是什麼人最先提出來的:", answer1: "中國人", answer2: "法國人", answer3: "英國人", answer4: "美國人", rightAnswer: 2),
    multipleChoiceQuestions(question: "下列食品中，哪個含鈣量最高？", answer1: "骨頭湯", answer2: "葡萄糖", answer3: "水果", answer4: "奶及奶制品", rightAnswer: 3),
    multipleChoiceQuestions(question: "鐵達尼號游輪是哪一年沉沒的？", answer1: "1910", answer2: "1911", answer3: "1912", answer4: "1913", rightAnswer: 3),
    multipleChoiceQuestions(question: "歌德寫《浮士德》用了多長時間？", answer1: "30年", answer2: "40年", answer3: "50年", answer4: "60年", rightAnswer: 4),
    multipleChoiceQuestions(question: "四大名亭中的陶然亭是因為誰的詩句得名的？", answer1: "歐陽修", answer2: "杜牧", answer3: "白居易", answer4: "陶淵明", rightAnswer: 3),
    multipleChoiceQuestions(question: "巴金幾歲寫成長篇小說《家》？", answer1: "27歲", answer2: "28歲", answer3: "29歲", answer4: "30歲", rightAnswer: 1),
    multipleChoiceQuestions(question: "在位時間最短的皇帝是東漢的劉賀，他只當了多久的皇帝就被廢除了？", answer1: "25天", answer2: "26天", answer3: "27天", answer4: "28天", rightAnswer: 3),
    multipleChoiceQuestions(question: "有“世界花城”（花都）之稱的是那個城市？", answer1: "紐約", answer2: "倫敦", answer3: "巴黎", answer4: "華盛頓", rightAnswer: 3),
    multipleChoiceQuestions(question: "世界上最早的銀行始建於哪個國家？", answer1: "義大利", answer2: "美國", answer3: "法國", answer4: "瑞士", rightAnswer: 1),
    multipleChoiceQuestions(question: "“垂簾聽政”始於何時？", answer1: "宋朝", answer2: "元朝", answer3: "唐朝", answer4: "清朝", rightAnswer: 3),
    multipleChoiceQuestions(question: "排球1895年始於那個國家？", answer1: "日本", answer2: "英國", answer3: "荷蘭", answer4: "美國", rightAnswer: 4),
    multipleChoiceQuestions(question: "乒乓球十九世紀始於那個國家？", answer1: "中國", answer2: "瑞典", answer3: "法國", answer4: "英國", rightAnswer: 4),
    multipleChoiceQuestions(question: "歐元什麼時候正式誕生？", answer1: "1999年1月1日", answer2: "1999年7月1日", answer3: "999年12月1日", answer4: "1999年2月1日", rightAnswer: 1),
    multipleChoiceQuestions(question: "孔泰發明的現在通用的鉛筆是由石墨和什麼混合制成的？", answer1: "鉛粉", answer2: "粘土", answer3: "松香", answer4: "硫磺", rightAnswer: 2),
    multipleChoiceQuestions(question: "促進人體胃腸吸收鈣的重要物質是：", answer1: "維生素A", answer2: "維生素B", answer3: "維生素C", answer4: "維生素D", rightAnswer: 4),
    multipleChoiceQuestions(question: "下列人物中，哪一個是羅馬神話中的神？", answer1: "雅典娜", answer2: "朱比特", answer3: "蚩尤", answer4: "黑天", rightAnswer: 2),
    multipleChoiceQuestions(question: "“沙龍”Salon是從哪國傳進的外來語？", answer1: "英國", answer2: "法國", answer3: "俄國", answer4: "美國", rightAnswer: 4)
]


struct answerQuestions {
    var question: String
    var answer: String
}

var allAnswerQuestions = [answerQuestions(question: "有一隻瓢蟲飛到一棵樹上，結果瓢蟲笑了，為什麼?", answer: "因為樹有梗"),
                          answerQuestions(question: "10/31是蔣公誕辰紀念日，請問11/31是什麼日子?", answer: "沒有這一天"),
                          answerQuestions(question: "有一隻瓢蟲飛到一棵樹上，結果瓢蟲笑了，為什麼?", answer: "因為樹有梗"),
                          answerQuestions(question: "動物園裡每個人必看的是什麼動物?", answer: "售票員"),
                          answerQuestions(question: "火車從台北到台中要一個小時，發車半小時後，請問火車在哪裡?", answer: "鐵軌上"),
                          answerQuestions(question: "馬的頭朝南，請問馬的尾巴朝哪裏?", answer: "下面"),
                          answerQuestions(question: "全世界總共有幾隻大象?", answer: "真象永遠只有一個"),
                          answerQuestions(question: "可以一面刷牙一邊吹口哨的人是誰?", answer: "帶假牙的人"),
                          answerQuestions(question: "請問哪一種花沒有孩子?", answer: "五月花衛生紙(未生子)"),
                          answerQuestions(question: "如果生出來的小孩只有一隻右手，你會怎麼辦?", answer: "誰會有兩隻右手"),
                          answerQuestions(question: "一個人空腹可以吃幾顆蛋?", answer: "一個(因為吃了一個後就不是空腹了)"),
                          answerQuestions(question: "為什麼阿里巴巴只帶36名海盜過來?", answer: "台灣已有市民大道(四名大盜)"),
                          answerQuestions(question: "為什麼大部分的學生都很痛恨秦始皇『焚書坑儒』的行為?", answer: "燒得不夠乾淨"),
                          answerQuestions(question: "有兩個王子為了一個很醜的公主打架，為什麼?", answer: "輸了要娶他"),
                          answerQuestions(question: "阿宅急著上廁所，猜一種服務行為?", answer: "宅急便"),
                          answerQuestions(question: "約翰的媽媽是誰?", answer: "薑母鴨(JOHN母鴨)"),
                          answerQuestions(question: "公司裁員時不能喝甚麼飲料?", answer: "仙草蜜(先炒ME)"),
                          answerQuestions(question: "茉莉花、玫瑰花、太陽花，哪一種花最沒力?", answer: "茉莉花(好一朵美麗【沒力】的茉莉花)"),
                          answerQuestions(question: "小王說我的前面是小李，小李說我的前面是小王，請問他們怎麼站的?", answer: "面對面"),
                          answerQuestions(question: "上帝為什麼不用租A片", answer: "人在做天在看")]
