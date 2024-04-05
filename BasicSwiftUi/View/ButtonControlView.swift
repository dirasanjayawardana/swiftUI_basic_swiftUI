//
//  ButtonControl.swift
//  BasicSwiftUi
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct ButtonControlView: View {
    var body: some View {
        VStack(spacing: 24) {
            
            // button yang sederhana
            Button(action: {
                print("Standard button tapped")
            }, label: {
                Text("Standard Button")
            })
            .buttonStyle(.bordered)
            .controlSize(.extraLarge)
            
            // Role button
            Button(role: .destructive) {
                print("Destructive button tapped")
            } label: {
                Text("Destructive Button")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            // Custom button 1
            Button {
                print("Custom button 1 tapped")
            } label: {
                Text("Custom Button 1")
                    .padding()
                    .background(.purple)
                    .foregroundStyle(.white)
                    .font(.title)
                    .clipShape(Capsule())
            }
            
            // Custom button 2
            Button {
                print("Custom button 2 tapped")
            } label: {
                Text("Custom Button 2")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .foregroundStyle(.white)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(.purple, lineWidth: 5)
                    }
            }
            
            // Image Button
            Button {
                
            } label : {
                Image(systemName: "power.circle.fill")
                    .padding()
                    .background(.green)
                    .clipShape(Circle())
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
            
            // Button Linear Gradient
            Button {
                print("CImage button tapped")
            } label: {
                Label("Add Stock", systemImage: "flame")
                    .font(.title)
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .padding()
            .foregroundStyle(.white)
            .background(
                LinearGradient(colors: [.yellow, .green, .blue], startPoint: .trailing, endPoint: .leading)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
        }
        .padding()
    }
}

#Preview {
    ButtonControlView()
}
