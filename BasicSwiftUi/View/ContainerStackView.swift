//
//  ContainerStack.swift
//  BasicSwiftUi
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct ContainerStackView: View {
    var body: some View {
        
        // Zstack (view akan disusun secara bertumpuk, paling atas paling belakang)
        ZStack {
            LinearGradient(
                colors: [.yellow, .green, .blue],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea() // memenuhi semua layar, mengabaikan safeArea
            
            // Vstack (vertical stack, view disusun dari atas kebawah)
            VStack {
                Text("New Iphone 15 Pro")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                
                Spacer() // menambahkan space antar view
                
                Image(systemName: "applelogo")
                    .font(.system(size: 120))
                
                Spacer()
                
                // Hstack (horizontal stack, menyusun view dari kiri ke kanan)
                HStack {
                    Image(systemName: "lock.open.applewatch")
                    
                    Text("Unlock your crativity")
                }
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 24)
                
            }
            .foregroundStyle(.black)
            .padding(.top, 40)  // 10 points top padding
            .padding(.leading, 15) // 15 points leading padding (left)
            .padding(.bottom, 20) // 20 points bottom padding
            .padding(.trailing, 25) // 25 points trailing padding (right)
        }
        
    }
}

#Preview {
    ContainerStackView()
}
