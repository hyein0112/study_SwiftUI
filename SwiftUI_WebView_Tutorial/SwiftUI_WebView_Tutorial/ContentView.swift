//
//  ContentView.swift
//  SwiftUI_WebView_Tutorial
//
//  Created by 혜인 on 2022/03/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    .offset(y: -150)
                    .foregroundColor(Color.yellow)
                
                Circle()
                    .frame(width: 200)
                    .foregroundColor(.yellow)
                    .shadow(color: .gray, radius: 2, x: 5, y: 5)
                    .overlay(
                        Circle()
                            .opacity(0.1)
                    )
                    .overlay(
                        Circle().stroke(Color.green, lineWidth: 5)
                    )
                    .overlay(
                        Text("이미지를 클릭하여 웹사이트로 이동")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                    )
                    .offset(y: -300)
                
                HStack{
                    NavigationLink(destination:  MyWebView(urlToLoad: "http://www.daum.net").edgesIgnoringSafeArea(.all)){
                        Image("daum")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 36)
                    }
                    .padding()
                        
                    NavigationLink(destination: MyWebView(urlToLoad: "http://www.naver.com").edgesIgnoringSafeArea(.all)){
                        Image("naver")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 25)
                    }
                    .padding()
                    
                    NavigationLink(destination: MyWebView(urlToLoad: "http://www.google.com").edgesIgnoringSafeArea(.all)){
                        Image("google")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 40)
                    }
                    .padding()
                }.offset(y: -250)
                    .shadow(color: .gray, radius: 1.5, x: 2, y: 4)
            }
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
