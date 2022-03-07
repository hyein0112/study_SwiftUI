//
//  MyVStackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 혜인 on 2022/03/07.
//

import SwiftUI

struct MyVStackView: View{
    var body: some View{
        
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 40))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 40))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 40))
        }
        .background(Color.red)

    }
}
