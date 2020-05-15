//
//  ContentView.swift
//  swiftui-watermark-customview
//
//  Created by MAC on 16/5/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

//Watermark Can use any other view

struct WatermarkViewModiifier: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(7)
                .background(Color.gray)
                .rotationEffect(Angle(degrees: 25), anchor: .trailing)
            
               
        }
    }
}

extension View {
    
    func watermarked(with text: String) -> some View {
        self.modifier(WatermarkViewModiifier(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        Image("arifhossen_saintmartin")
        .resizable()
        .scaledToFit()
        .frame(width: 300, height: 200)
        .watermarked(with: "Bangladesh St. Martin's Island Chera Dip!!!!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
