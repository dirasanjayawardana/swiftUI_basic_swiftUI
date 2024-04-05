//
//  SwiftUIState.swift
//  BasicSwiftUi
//
//  Created by MACBOOK PRO on 05/04/24.
//

import SwiftUI

struct SwiftUIStateView: View {
    
    @State private var isPlaying: Bool = false
    @State private var counterPlayerOne: Int = 0
    @State private var counterPlayerTwo: Int = 0
    
    var body: some View {
        VStack {
            Button {
                isPlaying.toggle()
            } label: {
                Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 160))
                    .foregroundStyle(isPlaying ? .pink : .indigo)
            }
            
            ListPlayerView(
                counterPlayerOne: $counterPlayerOne,
                counterPlayerTwo: $counterPlayerTwo
            )
            
            Button {
                counterPlayerOne = 0
                counterPlayerTwo = 0
            } label: {
                Text("Reset")
            }
        }
    }
}

#Preview {
    SwiftUIStateView()
}

struct ListPlayerView: View {
    
    // @Binding membuat variabel yang menghubungkan antara dua view, mengaksesnya dengan membuat state di view lain dengan nama yang sama
    @Binding var counterPlayerOne: Int
    @Binding var counterPlayerTwo: Int
    
    var body: some View {
        List {
            HStack(spacing: 60) {
                Text("Counter player one")
                Text("\(counterPlayerOne)")
            }
            .onTapGesture {
                counterPlayerOne += 1
            }
            
            HStack(spacing: 60) {
                Text("Counter player two")
                Text("\(counterPlayerTwo)")
            }
            .onTapGesture {
                counterPlayerTwo += 1
            }
        }
    }
}
