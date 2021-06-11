//
//  ContentView.swift
//  FlagRaisingRetro
//
//  Created by JiaChen(: on 12/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var offset: CGFloat = 30
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.white.border(Color.black, width: 2)
            VStack(spacing: -2) {
                ZStack(alignment: .leading) {
                    HStack(spacing: 0) {
                        VStack(spacing: 2) {
                            ForEach(0..<6) { _ in
                                Rectangle()
                                    .background(Color.black)
                                    .frame(height: 2)
                            }
                        }
                        Text("Flag Raising")
                            .font(.system(size: 24, weight: .heavy, design: .monospaced))
                            .padding(.horizontal, 5)
                        VStack(spacing: 2) {
                            ForEach(0..<6) { _ in
                                Rectangle()
                                    .background(Color.black)
                                    .frame(height: 2)
                            }
                        }
                    }
                    .padding(5)
                    .border(Color.black, width: 2)
                    
                    Rectangle()
                        .stroke(lineWidth: 2)
                        .frame(width: 26, height: 22)
                        .background(Color.white)
                        .padding(.leading, 22)
                        .foregroundColor(.white)
                    
                    Rectangle()
                        .stroke(lineWidth: 2)
                        .frame(width: 22, height: 22)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .padding(.leading, 24)
                        .onTapGesture {
                            NSApplication.shared.terminate(nil)
                        }
                }
                
                HStack(alignment: .bottom, spacing: -10) {
                    Rectangle()
                        .frame(width: 10)
                    Text("🇸🇬")
                        .font(.system(size: 100))
                        .offset(x: 0, y: offset)
                    
                }
                .padding()
                
                HStack {
                    ZStack {
                        Color.black
                            .offset(x: 2, y: 2)
                        Color.white
                            .border(Color.black, width: 2)
                        HStack {
                            Image(systemName: "arrow.up")
                            Text("Raise")
                        }
                        .font(.system(size: 20, weight: .heavy, design: .monospaced))
                    }
                    .frame(width: 150, height: 50)
                    .onTapGesture {
                        offset -= 10
                    }
                    .padding()
                    
                    ZStack {
                        Color.black
                            .offset(x: 2, y: 2)
                        Color.white
                            .border(Color.black, width: 2)
                        
                        HStack {
                            Image(systemName: "info.circle")
                            Text("Info")
                        }
                        .font(.system(size: 20, weight: .heavy, design: .monospaced))
                    }
                    .frame(width: 150, height: 50)
                    .onTapGesture {
                        NSWorkspace.shared.open(URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!)
                    }
                    .padding()
                }
            }
        }
        .colorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
