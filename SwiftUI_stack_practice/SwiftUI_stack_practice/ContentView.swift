//
//  ContentView.swift
//  SwiftUI_stack_practice
//
//  Created by 혜인 on 2022/04/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                        .onTapGesture {
                            print("setting")
                        }
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                        .onTapGesture {
                            print("my page")
                        }
                }.padding(.horizontal)
                
                Text("To Do List").fontWeight(.bold).font(.system(size: 50))
                    .padding()
                ScrollView{
                    VStack{
                        MyProjectCard()
                        MyBasicCard(imageName: "person.3", titleName: "프로젝트 회의", subtitleName: "09AM ~ 10AM", backgroundColor: .blue)
                        MyBasicCard(imageName: "airpods.gen3", titleName: "노래듣기", subtitleName: "02PM ~ 03PM", backgroundColor: .purple)
                        MyBasicCard(imageName: "gamecontroller", titleName: "게임하기", subtitleName: "07PM ~ 10PM", backgroundColor: .orange)
                        MyBasicCard(imageName: "bicycle", titleName: "운동하기", subtitleName: "10PM ~ 11PM", backgroundColor: .red)
                        MyBasicCard(imageName: "pencil", titleName: "입력", subtitleName: "00PM ~ 00PM", backgroundColor: .gray)
                        MyBasicCard(imageName: "pencil", titleName: "입력", subtitleName: "00PM ~ 00PM", backgroundColor: .gray)
                        MyBasicCard(imageName: "pencil", titleName: "입력", subtitleName: "00PM ~ 00PM", backgroundColor: .gray)
                    }.padding().frame(maxWidth: .infinity)
                }
                    
                
            }
            
            Circle().frame(width: 60, height: 60)
                .foregroundColor(.yellow)
                .shadow(radius: 20)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
            )
                .padding(.trailing)
                .onTapGesture {
                    print("plus")
                }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
