//
//  MyBasicCard.swift
//  SwiftUI_stack_practice
//
//  Created by 혜인 on 2022/04/09.
//

import SwiftUI

struct MyBasicCard: View {
    var imageName: String
    var titleName: String
    var subtitleName: String
    var backgroundColor: Color
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: imageName)
                .font(.system(size: 30)).frame(width: 70, height: 50)
            
            VStack(alignment: .leading, spacing: 0){
                Rectangle().frame(height: 0)
                Text(titleName)
                    .font(.system(size: 25))
                    .fontWeight(.black)
                    .padding(.bottom,5)
                Text(subtitleName)
            }
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(20)
        
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard(imageName: "person.3", titleName: "프로젝트 회의", subtitleName: "09AM ~ 10AM", backgroundColor: .blue)
    }
}
