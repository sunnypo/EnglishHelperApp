//
//  File.swift
//  
//
//  Created by sunny on 2022-03-06.
//

import Foundation

struct Answer: Hashable {
    var id: UUID = UUID()
    var picUrl: URL
    var isSeleted: Bool 
    var isCorrect: Bool
}



struct Answer_Sample{
    var AnswerSample: [[Answer]] = [
        [
            Answer(picUrl: URL(string: "https://raw.githubusercontent.com/HDCodePractice/EnglishHelper/main/res/pictures/Clothing/Everyday%20Clothes/blouse.jpg")!,isSeleted: false, isCorrect: false),
            Answer(picUrl: URL(string: "https://raw.githubusercontent.com/HDCodePractice/EnglishHelper/main/res/pictures/Clothing/Everyday%20Clothes/blouse.jpg")!,isSeleted: false, isCorrect: true),
            Answer(picUrl: URL(string: "https://raw.githubusercontent.com/HDCodePractice/EnglishHelper/main/res/pictures/Clothing/Everyday%20Clothes/blouse.jpg")!,isSeleted: true, isCorrect: false)
        ],[
            Answer(picUrl: URL(string: "https://raw.githubusercontent.com/HDCodePractice/EnglishHelper/main/res/pictures/Clothing/Everyday%20Clothes/blouse.jpg")!,isSeleted: true, isCorrect: false),
            Answer(picUrl: URL(string: "https://raw.githubusercontent.com/HDCodePractice/EnglishHelper/main/res/pictures/Clothing/Everyday%20Clothes/blouse.jpg")!,isSeleted: false, isCorrect: false),
            Answer(picUrl: URL(string: "https://raw.githubusercontent.com/HDCodePractice/EnglishHelper/main/res/pictures/Clothing/Everyday%20Clothes/blouse.jpg")!,isSeleted: false, isCorrect: false)
        ]
    ]
}
