//
//  Item.swift
//  SwiftUI_E_CommerceApp
//
//  Created by park kyung seok on 2021/08/15.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var title: String
    var subTitle: String
    var price: String
    var rating: String
    var image: String
}

var itemList =  [
    Item(title: "Vincent Chase", subTitle: "Black Full Rim", price: "$36", rating: "3.8", image: "p1"),
    Item(title: "John Jacobs", subTitle: "Brown Tortoise", price: "$46", rating: "4.4", image: "p2"),
    Item(title: "Specialized", subTitle: "S-Works Tarmac SL7", price: "$12,000", rating: "4.8", image: "p3"),
    Item(title: "Apple", subTitle: "2022 Macbook pro M1X", price: "$1,999", rating: "4.5", image: "p4"),
]
