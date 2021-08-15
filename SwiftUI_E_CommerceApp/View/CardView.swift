//
//  CardView.swift
//  SwiftUI_E_CommerceApp
//
//  Created by park kyung seok on 2021/08/15.
//

import SwiftUI

struct CardView: View {
    
    var item: Item
    var animation: Namespace.ID
    
    var body: some View {
        
        VStack {
            
            // Price
            HStack {
                
                Spacer(minLength: 0)
                
                Text(item.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
            }
            
            // Image Area
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "image\(item.id)", in: animation)
                .padding(.top, 30)
                .padding(.bottom)
                .padding(.horizontal, 10)
            
            //Bottom Area
            Text(item.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .matchedGeometryEffect(id: "title\(item.id)", in: animation)

            
            Text(item.subTitle)
                .font(.caption)
                .foregroundColor(.gray)
                .matchedGeometryEffect(id: "subtitle\(item.id)", in: animation)

            
            // Likes and Rating Area
            HStack {
                Button(action: { }) {
                    
                    Image(systemName: "suit.heart")
                        .font(.title2)
                        .foregroundColor(.black)
                        .matchedGeometryEffect(id: "heart\(item.id)", in: animation)

                }
                
                Spacer(minLength: 0)
                
                Text(item.rating)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .matchedGeometryEffect(id: "rating\(item.id)", in: animation)

            }
            .padding(.top, 20)
            .padding(.horizontal, 15)
        }
        .padding(.bottom)
        .background(
            Color(item.image)
                .matchedGeometryEffect(id: "color\(item.id)", in: animation)
        )
        .cornerRadius(15)
    }
}
