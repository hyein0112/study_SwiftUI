//
//  MyProjectCard.swift
//  SwiftUI_stack_practice
//
//  Created by 혜인 on 2022/04/04.
//

import SwiftUI

struct MyProjectCard: View {
    @State var shouldShowAlert = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Rectangle().frame(height: 0)
            Text("프로젝트")
                .font(.system(size: 25))
                .fontWeight(.black)
            Text("10 AM ~ 11 AM")
                .foregroundColor(.secondary)
                .padding(.bottom, 10)
            HStack{
                Image("user1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.blue)
                    )
                Image("user2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("user3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    print("확인")
                    
                    shouldShowAlert = true
                }){
                    Text("**확인**")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("확인"))
                }
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
