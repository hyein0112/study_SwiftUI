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
            HStack{
                NavigationLink(destination:  MyWebView(urlToLoad: "http://www.daum.net")){
                    Image("daum")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 40)
                }
                .padding()
                    
                NavigationLink(destination: MyWebView(urlToLoad: "http://www.naver.com")){
                    Image("naver")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 25)
                }
                .padding()
                
                NavigationLink(destination: MyWebView(urlToLoad: "http://www.google.com")){
                    Image("google")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 40)
                }
                .padding()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
