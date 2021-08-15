//
//  Home.swift
//  SwiftUI_E_CommerceApp
//
//  Created by park kyung seok on 2021/08/15.
//

import SwiftUI

// Tabs
var tabs = ["Glasses", "Watched", "Shoes", "Perfume"]


struct Home: View {
    
    @State var selected = tabs[0]
    @Namespace var animation
    
    @State var isShow =  false
    @State var selectedItem: Item = itemList[0]
    
    var body: some View {
        
        ZStack {
            
            // Home
            VStack {
                
                // Header
                HStack {
                    Button(action: { }) {
                        
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 25, weight: .heavy))
                            .foregroundColor(.primary)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: { }) {
                        
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 45, height: 45)
                            .cornerRadius(15)
                    }
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                
                ScrollView {
                    
                    VStack {
                        
                        // Header Title Area
                        HStack {
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Let's")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                
                                Text("Get Started")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.primary)
                            }
                            .padding(.horizontal)
                            
                            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        }
                      
                        // Tabs
                        HStack(spacing: 0) {
                            
                            ForEach(tabs, id: \.self) { tab in
                                
                                TabButton(title: tab, selected: $selected, animation: animation)
                                
                                //ボタンごとにスペースを割り当てる　except last one
                                if tabs.last != tab { Spacer(minLength: 0) }
                                
                            }
                        }
                        .padding()
                        .padding(.top, 5)
                        
                        // Card Views (Items) Area
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20, content: {
                           
                            ForEach(itemList) { item in
                                
                                // Card View
                                CardView(item: item, animation: animation)
                                    .onTapGesture {
                                        
                                        withAnimation(.spring()) {
                                            
                                            selectedItem = item
                                            isShow.toggle()
                                        }
                                    }
                            }
                        })
                        .padding()
                        
                    }
                }
                
                Spacer(minLength: 0)
            }
            .opacity(isShow ? 0 : 1)
            
            // Detail
            if isShow { Detail(selectedItem: $selectedItem, isShow: $isShow, animation: animation) }
        }
        .background(Color.white.ignoresSafeArea())

      
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
