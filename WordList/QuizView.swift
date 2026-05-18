//
//  QuizView.swift
//  WordList
//
//  Created by 後藤亜有 on 2026/05/15.
//

import SwiftUI
import SwiftData

struct QuizView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    @Query var words: [Word]
    @State var index = 0
    @State var showAnswer = false
    
    var isLastQuiz: Bool{
        index + 1 >= words.count
    }
    
    var body: some View {
        VStack(spacing: 24){
            Spacer()
            
            if words.isEmpty{
                Text("登録されている単語がありません")
            }else{
                Text(words[index].english).font(.largeTitle)
                
                Text(showAnswer ? words[index].japanese : "-")
                    .font(.largeTitle)
                
                Button{
                    showAnswer.toggle()
                }label:{
                    Text(showAnswer ? "回答を非表示" : "正解を表示")
                }
                .font(.title)
                .foregroundStyle(.white)
                .padding(.vertical,12)
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .clipShape(.capsule)
            }

            Spacer()
            
            Button{
                if isLastQuiz {
                    dismiss()
                } else {
                    index += 1
                    showAnswer = false
                }
                
            }label: {
                Text(isLastQuiz ? "終了！": "次の問題へ")
            }
            .font(.title)
            .foregroundStyle(.white)
            .padding(.vertical,12)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .clipShape(.capsule)
            Spacer()
        }
        .padding(.horizontal,60)
    }
}

#Preview {
    QuizView()
        .modelContainer(wordContainer)
}
