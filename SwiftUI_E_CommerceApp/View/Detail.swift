//
//  Detail.swift
//  SwiftUI_E_CommerceApp
//
//  Created by park kyung seok on 2021/08/15.
//

import SwiftUI

struct Detail: View {
    
    @Binding var selectedItem: Item
    @Binding var isShow: Bool

    var animation: Namespace.ID
    
    var body: some View {
        
        VStack {
            
            // Header
            HStack(spacing: 25) {
                
                Button(action: {
                    
                    // closing view
                    withAnimation(.spring()) {
                        isShow.toggle()
                    }
                }) {
                    
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.black)
                    
                }
                
                Spacer()
                
                Button(action: { }) {
                    
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.black)
                }
                
                Button(action: { }) {
                    
                    Image(systemName: "bag")
                        .font(.title)
                        .foregroundColor(.black)
                }
            }
                .padding()
            
            VStack {
                Image(selectedItem.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: "image\(selectedItem.id)", in: animation)
                    .padding()
                
                Text(selectedItem.title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Text(selectedItem.subTitle)
                    .foregroundColor(.gray)
                    .padding(.top, 4)
                
                
                HStack {
                    
                    Text(selectedItem.rating)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .matchedGeometryEffect(id: "rating\(selectedItem.id)", in: animation)
                    
                    Spacer()
                    
                    Button(action: { }) {
                        
                        Image(systemName: "suit.heart")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    .matchedGeometryEffect(id: "heart\(selectedItem.id)", in: animation)
                }
                .padding()
            }
            .padding()
            .background(
                
                Color(selectedItem.image)
                // Giving hero effect for color also 色にもアニメーションを付与
                    .matchedGeometryEffect(id: "color\(selectedItem.id)", in: animation)
            )
            .cornerRadius(15)
            .padding()
           
            Spacer()
        }
    }
}

//struct Detail_Previews: PreviewProvider {
//    static var previews: some View {
//        Detail()
//    }
//}
