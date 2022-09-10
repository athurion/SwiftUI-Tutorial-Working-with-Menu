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
                HStack {
                    Image(systemName: "eyedropper.full")
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(top: 12, leading: 7, bottom: 12, trailing: 0))
                    Text("\(backgroundColor.rawValue)")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 7))
                }
            }
            .frame(width: 120)
            .background(Color.blue)
            .cornerRadius(15)
            
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
