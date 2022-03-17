//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 혜인 on 2022/03/07.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActivated = false
    
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }//HStack
                
                .padding(isActivated ? 50 : 10)
                // default: .all
                .background(isActivated ? Color.yellow : Color.black)
                
                // 탭 제스쳐
                .onTapGesture {
                    print("Click HStack")
                    withAnimation{
                        isActivated.toggle()
                    }
                }
                // navigation Link
                NavigationLink(destination: MyTextView(isActivated: $isActivated)){
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                        
                }
                .padding(.top, 50)
            } //VStack
        } //NavigationView

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
