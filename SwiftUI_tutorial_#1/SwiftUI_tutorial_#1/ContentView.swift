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
        HStack{
            MyVStackView()
            MyVStackView()
            MyVStackView()
        }
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
