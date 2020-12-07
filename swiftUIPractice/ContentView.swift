//
//  ContentView.swift
//  swiftUIPractice
//
//  Created by soyounglee on 2020/12/05.
//
// 텍스트 관련 뷰
import SwiftUI

struct ContentView: View {
    /* 텍스트 관련
    var body: some View {
        Text("Hello, world!")
            //.lineLimit(3) //Line 수 조절
            //.truncationMode(.head) // 생략 조절
            //.font(.largeTitle) // 폰트변경
            //.multilineTextAlignment(.center) // 정렬
            //.foregroundColor(.blue) // 폰트 색상
            //.background(Color.yellow) // 배경 색상
            // .lineSpacing(3) // 줄 간격
        }
     */
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var dueDate = Date()
    var body: some View {
        Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
