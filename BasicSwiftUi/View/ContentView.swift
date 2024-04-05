//
//  ContentView.swift
//  BasicSwiftUi
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // container dalam VStack (dalam satu view usahakan hanya ada satu view pembungkus)
        VStack {
            
            // image dari system
            Image(systemName: "cloud.hail.fill")
                .font(.system(size: 120))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.purple, .blue)
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 10)
            
            // image dari assets
            Image(.image1)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            // Group digunakan sebagai pembugkus
            Group {
                // image dari url
                let url = URL(string: "https://images.unsplash.com/photo-1555099962-4199c345e5dd?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
                
                AsyncImage(url: url) {
                    image in
                    image.resizable()
                        .scaledToFill()
                        .clipShape(Rectangle())
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 200)
                
            }
            .overlay {
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .opacity(0.4)
                    HStack {
                        Image(systemName: "cloud.sun.rain")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white, .yellow, .blue)
                            .font(.largeTitle)
                        
                        Text("This is Cloud")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                    }
                }
            }
            
            Text("Hello World")
            
            Text("This is the basic")
            
        }
    }
}

#Preview {
    ContentView()
}
