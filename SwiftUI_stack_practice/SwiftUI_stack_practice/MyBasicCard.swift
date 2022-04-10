//
//  MyBasicCard.swift
//  SwiftUI_stack_practice
//
//  Created by 혜인 on 2022/04/09.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 0){
                Rectangle().frame(height: 0)
                Text("프로젝트 회의하기")
                    .font(.system(size: 25))
                    .fontWeight(.black)
                Text("10 AM ~ 11 AM")
                    .foregroundColor(.secondary)
                
            }
            .padding(30)
            .background(Color.yellow)
            .cornerRadius(20)
        }
        
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
