//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 혜인 on 2022/03/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            MyVStackView()
            MyVStackView()
            MyVStackView()
        }
        .padding(10)
        // default: .all
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
