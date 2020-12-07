//
//  ImagePracticeView.swift
//  swiftUIPractice
//
//  Created by soyounglee on 2020/12/05.
//

import SwiftUI

struct ImagePracticeView: View {
    var body: some View {
        
        Circle()
            .fill(Color.blue)
            .frame(width: 250, height: 250)
        
        
        /*
        Rectangle()
            .fill(Color.blue)
            .frame(width: 250, height: 200)
        */
        
        
        /*
        Text("소영화이팅 짱짱짱")
            // 그라데이션 효과 !!!
            .background(LinearGradient(gradient: Gradient(colors:[.white,.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
         */
        
        /*
          Image("하늘")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/) // 이미지 사이즈 조절
         */
        //Image(systemName: "circle")
        /*
        guard let img = UIImage(named: "하늘") else {
            fatalError("Fatal Error")
        }
        return Image(uiImage: img)
         */
    }
}

struct ImagePracticeView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePracticeView()
    }
}
