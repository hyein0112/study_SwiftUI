//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 혜인 on 2022/03/13.
//

import SwiftUI

struct MyTextView : View{
    @State
    private var index: Int = 0
    
    //data 연동
    @Binding
    var isActivated : Bool
    
    
    //생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
     
    private let colors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange,
    ]

    var body: some View{
        
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
        }//VStack
        
        .background(colors[index])
        .onTapGesture {
            print("tap background")
            
            if(index == colors.count - 1){
                index = 0
            }else{
                index += 1
            }
            
        }
        
    }
    
}


struct MyTextView_Previews: PreviewProvider{
    static var previews: some View{
        MyTextView()
    }
}
