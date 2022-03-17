//
//  MyWeb.swift
//  SwiftUI_WebView_Tutorial
//
//  Created by 혜인 on 2022/03/17.
//

import SwiftUI
import WebKit

//UIKit의 UIView를 사용할 수 있게 함.
struct MyWebView : UIViewRepresentable {
    
    var urlToLoad: String
    
    //UIView 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: urlToLoad) else { return WKWebView() }
        
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    //UIView 업데이트
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
    }
}

struct MyWebView_Previews: PreviewProvider{
    static var previews: some View{
        MyWebView(urlToLoad: "http://www.naver.com")
    }
}
