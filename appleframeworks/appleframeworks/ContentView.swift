//
//  ContentView.swift
//  appleframeworks
//
//  Created by Gaurav Kundalwal on 17/01/24.
//

import SwiftUI

struct ContentView: View {
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(MockData.frameworks){framework in
                FrameworkTitleView(framework: framework)
            }
        }
    }
}

#Preview {
    ContentView()
}


struct FrameworkTitleView: View{
    let framework: Framework
    
    var body: some View{
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                
        }
    }
}
