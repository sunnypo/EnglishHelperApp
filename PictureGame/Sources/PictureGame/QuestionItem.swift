//
//  File 2.swift
//  
//
//  Created by sunny on 2022-03-06.
//
import Foundation
import SwiftUI

struct QuestionItem: View {
    var answer: Answer
//    var answer = Answer()
    var isShowSelected : Bool {
        return answer.isSeleted
    }
    var body: some View {
        ZStack {
            Rectangle().fill(.white).cornerRadius(5).shadow( color: isShowSelected ? (answer.isCorrect ? .green : .red) : .gray, radius: 5)
            AsyncImage(url: answer.picUrl)
            {
                image in
                
                image.resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            if (isShowSelected) {
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .font(.largeTitle )
                    .foregroundColor(answer.isCorrect ? .green : .red)
                    .opacity(0.8)
            }
        }
//        .onTapGesture {
//            answer.isSeleted = true
//        }
    }
    
    struct Six_Pictures_Grid:View{
        var answer: Answer
        var answerWord = "answer word"
        var answersample = Answer_Sample()
        var body: some View {
            VStack{
                Text("Tap the answer of").font(.body).foregroundColor(.gray).fontWeight(.heavy)
                Text(answerWord).font(.largeTitle).fontWeight(.heavy)
                VStack {
                    ForEach(answersample.AnswerSample,id: \.self)
                    { k in
                        HStack {
                            ForEach(k,id: \.self)
                            { i in
                                QuestionItem(answer: i)
                            }
                        }
                    }
                }
                
                Button_Next(buttonTitle: "Next", background: .purple,width: .infinity,height: 50)
                
            }
        }
    }
    struct QuestionItem_Previews: PreviewProvider {
        static var previews: some View {
            Group{
                Six_Pictures_Grid()
            }
            
        }
    }
}
