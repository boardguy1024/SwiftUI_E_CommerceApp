//
//  TabButton.swift
//  SwiftUI_E_CommerceApp
//
//  Created by park kyung seok on 2021/08/15.
//

import SwiftUI

struct TabButton: View {
    
    var title: String
    @Binding var selected: String
    
    var animation: Namespace.ID
    
    var body: some View {
        
        Button(action: {
            withAnimation(.spring()) {
                selected = title
            }
        }) {
            
            Text(title)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .foregroundColor(selected == title ? .white : .black)
                .padding(.vertical, 10)
                .padding(.horizontal, selected == title ? 20 : 0)
                .background(
                    
                    
                    // For Slide Effect Animation
                    // カレントの場合、matchedGeometryEffectを使ってアニメーションにする
                    ZStack {
                        
                        if selected == title {
                            Color.black
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                      
                    }
                )
        }
    }
}
