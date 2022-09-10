//
//  ContentView.swift
//  SwiftUI Tutorial: Working with Menu
//
//  Created by Alvin Sosangyo on 09/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var backgroundColor: ColorList = .white

    var body: some View {
        
        ZStack {
            
            switch backgroundColor {
            case .yellow: Color.yellow.ignoresSafeArea(.all)
            case .red: Color.red.ignoresSafeArea(.all)
            case .black: Color.black.ignoresSafeArea(.all)
            default: Color.white.ignoresSafeArea(.all)
            }
            
            Menu {
                ForEach(ColorList.allCases) { index in
                    Button("\(index.rawValue)", action: {
                        backgroundColor = index
                    })
                }
            } label: {
                Text("\(backgroundColor.rawValue)")
                    .font(.title3)
                    .foregroundColor(Color.white)
                    .frame(width: 90, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
        }
        
    }

} // ContentView

extension ContentView {
    
    enum ColorList: String, CaseIterable, Identifiable {
        case white, yellow, red, black
        var id: Self { self }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
