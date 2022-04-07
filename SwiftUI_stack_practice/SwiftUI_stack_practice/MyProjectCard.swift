//
//  MyProjectCard.swift
//  SwiftUI_stack_practice
//
//  Created by 혜인 on 2022/04/04.
//

import SwiftUI

struct MyProjectCard: View {
    var body: some View {
        VStack(alignment: .leading){
            Rectangle().frame(height: 0)
            Text("프로젝트")
                .font(.system(size: 25))
                .fontWeight(.black)
            Text("10 AM ~ 11 AM")
                .foregroundColor(.secondary)
                .padding(.bottom, 10)
            HStack{
                Circle().frame(width: 50, height: 50)
                Circle().frame(width: 50, height: 50)
                Circle().frame(width: 50, height: 50)
                
                Spacer()
                
                Text("**확인**")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 80)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
